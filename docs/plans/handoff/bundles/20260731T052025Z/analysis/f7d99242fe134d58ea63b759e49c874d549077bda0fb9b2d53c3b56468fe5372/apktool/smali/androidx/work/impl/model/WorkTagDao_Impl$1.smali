.class public final Landroidx/work/impl/model/WorkTagDao_Impl$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/work/impl/model/WorkTagDao_Impl$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final execSQL(Landroidx/room/PooledConnection;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0, p1, v0, p2}, Landroidx/room/PooledConnection;->usePrepared(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 13
    .line 14
    if-ne p0, p1, :cond_0

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method


# virtual methods
.method public final bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget p0, p0, Landroidx/work/impl/model/WorkTagDao_Impl$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    const/4 v1, 0x2

    .line 5
    const/4 v2, 0x1

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p2, Landroidx/work/impl/model/WorkSpec;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 18
    .line 19
    invoke-interface {p1, p0, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 23
    .line 24
    invoke-static {p0}, Landroidx/sqlite/SQLite;->stateToInt(Landroidx/work/WorkInfo$State;)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    int-to-long v3, p0

    .line 29
    invoke-interface {p1, v1, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-interface {p1, p0, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 38
    .line 39
    const/4 v3, 0x4

    .line 40
    invoke-interface {p1, p0, v3}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    sget-object p0, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 44
    .line 45
    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 46
    .line 47
    invoke-static {p0}, Landroidx/work/Data$Companion;->toByteArrayInternalV1(Landroidx/work/Data;)[B

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const/4 v4, 0x5

    .line 52
    invoke-interface {p1, v4, p0}, Landroidx/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 53
    .line 54
    .line 55
    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    .line 56
    .line 57
    invoke-static {p0}, Landroidx/work/Data$Companion;->toByteArrayInternalV1(Landroidx/work/Data;)[B

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const/4 v5, 0x6

    .line 62
    invoke-interface {p1, v5, p0}, Landroidx/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 63
    .line 64
    .line 65
    iget-wide v5, p2, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 66
    .line 67
    const/4 p0, 0x7

    .line 68
    invoke-interface {p1, p0, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 69
    .line 70
    .line 71
    iget-wide v5, p2, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 72
    .line 73
    const/16 p0, 0x8

    .line 74
    .line 75
    invoke-interface {p1, p0, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 76
    .line 77
    .line 78
    iget-wide v5, p2, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 79
    .line 80
    const/16 p0, 0x9

    .line 81
    .line 82
    invoke-interface {p1, p0, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 83
    .line 84
    .line 85
    iget p0, p2, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 86
    .line 87
    int-to-long v5, p0

    .line 88
    const/16 p0, 0xa

    .line 89
    .line 90
    invoke-interface {p1, p0, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 91
    .line 92
    .line 93
    iget-object v5, p2, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    const/4 v6, 0x0

    .line 103
    if-eqz v5, :cond_1

    .line 104
    .line 105
    if-ne v5, v2, :cond_0

    .line 106
    .line 107
    move v5, v2

    .line 108
    goto :goto_0

    .line 109
    :cond_0
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_f

    .line 113
    .line 114
    :cond_1
    move v5, v6

    .line 115
    :goto_0
    int-to-long v7, v5

    .line 116
    const/16 v5, 0xb

    .line 117
    .line 118
    invoke-interface {p1, v5, v7, v8}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 119
    .line 120
    .line 121
    iget-wide v7, p2, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 122
    .line 123
    const/16 v5, 0xc

    .line 124
    .line 125
    invoke-interface {p1, v5, v7, v8}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 126
    .line 127
    .line 128
    iget-wide v7, p2, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    .line 129
    .line 130
    const/16 v5, 0xd

    .line 131
    .line 132
    invoke-interface {p1, v5, v7, v8}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 133
    .line 134
    .line 135
    iget-wide v7, p2, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 136
    .line 137
    const/16 v5, 0xe

    .line 138
    .line 139
    invoke-interface {p1, v5, v7, v8}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 140
    .line 141
    .line 142
    iget-wide v7, p2, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 143
    .line 144
    const/16 v5, 0xf

    .line 145
    .line 146
    invoke-interface {p1, v5, v7, v8}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 147
    .line 148
    .line 149
    iget-boolean v5, p2, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    .line 150
    .line 151
    int-to-long v7, v5

    .line 152
    const/16 v5, 0x10

    .line 153
    .line 154
    invoke-interface {p1, v5, v7, v8}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 155
    .line 156
    .line 157
    iget-object v5, p2, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    .line 158
    .line 159
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    if-eqz v5, :cond_3

    .line 167
    .line 168
    if-ne v5, v2, :cond_2

    .line 169
    .line 170
    move v5, v2

    .line 171
    goto :goto_1

    .line 172
    :cond_2
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_f

    .line 176
    .line 177
    :cond_3
    move v5, v6

    .line 178
    :goto_1
    int-to-long v7, v5

    .line 179
    const/16 v5, 0x11

    .line 180
    .line 181
    invoke-interface {p1, v5, v7, v8}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 182
    .line 183
    .line 184
    iget v5, p2, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    .line 185
    .line 186
    int-to-long v7, v5

    .line 187
    const/16 v5, 0x12

    .line 188
    .line 189
    invoke-interface {p1, v5, v7, v8}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 190
    .line 191
    .line 192
    iget v5, p2, Landroidx/work/impl/model/WorkSpec;->generation:I

    .line 193
    .line 194
    int-to-long v7, v5

    .line 195
    const/16 v5, 0x13

    .line 196
    .line 197
    invoke-interface {p1, v5, v7, v8}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 198
    .line 199
    .line 200
    const/16 v5, 0x14

    .line 201
    .line 202
    iget-wide v7, p2, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverride:J

    .line 203
    .line 204
    invoke-interface {p1, v5, v7, v8}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 205
    .line 206
    .line 207
    iget v5, p2, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverrideGeneration:I

    .line 208
    .line 209
    int-to-long v7, v5

    .line 210
    const/16 v5, 0x15

    .line 211
    .line 212
    invoke-interface {p1, v5, v7, v8}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 213
    .line 214
    .line 215
    iget v5, p2, Landroidx/work/impl/model/WorkSpec;->stopReason:I

    .line 216
    .line 217
    int-to-long v7, v5

    .line 218
    const/16 v5, 0x16

    .line 219
    .line 220
    invoke-interface {p1, v5, v7, v8}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 221
    .line 222
    .line 223
    iget-object v5, p2, Landroidx/work/impl/model/WorkSpec;->traceTag:Ljava/lang/String;

    .line 224
    .line 225
    const/16 v7, 0x17

    .line 226
    .line 227
    if-nez v5, :cond_4

    .line 228
    .line 229
    invoke-interface {p1, v7}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 230
    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_4
    invoke-interface {p1, v5, v7}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 234
    .line 235
    .line 236
    :goto_2
    iget-object v5, p2, Landroidx/work/impl/model/WorkSpec;->backOffOnSystemInterruptions:Ljava/lang/Boolean;

    .line 237
    .line 238
    if-eqz v5, :cond_5

    .line 239
    .line 240
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 241
    .line 242
    .line 243
    move-result v5

    .line 244
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    goto :goto_3

    .line 249
    :cond_5
    const/4 v5, 0x0

    .line 250
    :goto_3
    const/16 v7, 0x18

    .line 251
    .line 252
    if-nez v5, :cond_6

    .line 253
    .line 254
    invoke-interface {p1, v7}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 255
    .line 256
    .line 257
    goto :goto_4

    .line 258
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 259
    .line 260
    .line 261
    move-result v5

    .line 262
    int-to-long v8, v5

    .line 263
    invoke-interface {p1, v7, v8, v9}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 264
    .line 265
    .line 266
    :goto_4
    iget-object p2, p2, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 267
    .line 268
    iget-object v5, p2, Landroidx/work/Constraints;->requiredNetworkType:Landroidx/work/NetworkType;

    .line 269
    .line 270
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 274
    .line 275
    .line 276
    move-result v7

    .line 277
    const/16 v8, 0x1e

    .line 278
    .line 279
    if-eqz v7, :cond_8

    .line 280
    .line 281
    if-eq v7, v2, :cond_b

    .line 282
    .line 283
    if-eq v7, v1, :cond_a

    .line 284
    .line 285
    if-eq v7, v0, :cond_c

    .line 286
    .line 287
    if-eq v7, v3, :cond_9

    .line 288
    .line 289
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 290
    .line 291
    if-lt v0, v8, :cond_7

    .line 292
    .line 293
    sget-object v0, Landroidx/work/NetworkType;->TEMPORARILY_UNMETERED:Landroidx/work/NetworkType;

    .line 294
    .line 295
    if-ne v5, v0, :cond_7

    .line 296
    .line 297
    move v0, v4

    .line 298
    goto :goto_5

    .line 299
    :cond_7
    const-string v0, "Could not convert "

    .line 300
    .line 301
    const-string v1, " to int"

    .line 302
    .line 303
    invoke-static {v5, v1, v0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m$3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    :cond_8
    move v0, v6

    .line 307
    goto :goto_5

    .line 308
    :cond_9
    move v0, v3

    .line 309
    goto :goto_5

    .line 310
    :cond_a
    move v0, v1

    .line 311
    goto :goto_5

    .line 312
    :cond_b
    move v0, v2

    .line 313
    :cond_c
    :goto_5
    const/16 v1, 0x19

    .line 314
    .line 315
    int-to-long v2, v0

    .line 316
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 317
    .line 318
    .line 319
    iget-object v0, p2, Landroidx/work/Constraints;->requiredNetworkRequestCompat:Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 320
    .line 321
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    .line 323
    .line 324
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 325
    .line 326
    const/16 v2, 0x1c

    .line 327
    .line 328
    if-ge v1, v2, :cond_d

    .line 329
    .line 330
    new-array p0, v6, [B

    .line 331
    .line 332
    goto/16 :goto_c

    .line 333
    .line 334
    :cond_d
    iget-object v0, v0, Landroidx/work/impl/utils/NetworkRequestCompat;->wrapped:Ljava/lang/Object;

    .line 335
    .line 336
    check-cast v0, Landroid/net/NetworkRequest;

    .line 337
    .line 338
    if-nez v0, :cond_e

    .line 339
    .line 340
    new-array p0, v6, [B

    .line 341
    .line 342
    goto/16 :goto_c

    .line 343
    .line 344
    :cond_e
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 345
    .line 346
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 347
    .line 348
    .line 349
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    .line 350
    .line 351
    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 352
    .line 353
    .line 354
    const/16 v4, 0x1f

    .line 355
    .line 356
    if-lt v1, v4, :cond_f

    .line 357
    .line 358
    :try_start_1
    invoke-static {v0}, Landroidx/work/impl/utils/NetworkRequest31;->transportTypes(Landroid/net/NetworkRequest;)[I

    .line 359
    .line 360
    .line 361
    move-result-object p0

    .line 362
    goto :goto_7

    .line 363
    :cond_f
    new-array v1, p0, [I

    .line 364
    .line 365
    fill-array-data v1, :array_0

    .line 366
    .line 367
    .line 368
    new-instance v5, Ljava/util/ArrayList;

    .line 369
    .line 370
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .line 372
    .line 373
    move v7, v6

    .line 374
    :goto_6
    if-ge v7, p0, :cond_11

    .line 375
    .line 376
    aget v9, v1, v7

    .line 377
    .line 378
    invoke-static {v0, v9}, Landroidx/work/impl/utils/Api28Impl;->hasTransport$work_runtime_release(Landroid/net/NetworkRequest;I)Z

    .line 379
    .line 380
    .line 381
    move-result v10

    .line 382
    if-eqz v10, :cond_10

    .line 383
    .line 384
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 385
    .line 386
    .line 387
    move-result-object v9

    .line 388
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    :cond_10
    add-int/lit8 v7, v7, 0x1

    .line 392
    .line 393
    goto :goto_6

    .line 394
    :cond_11
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/List;)[I

    .line 395
    .line 396
    .line 397
    move-result-object p0

    .line 398
    :goto_7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 399
    .line 400
    if-lt v1, v4, :cond_12

    .line 401
    .line 402
    invoke-static {v0}, Landroidx/work/impl/utils/NetworkRequest31;->capabilities(Landroid/net/NetworkRequest;)[I

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    goto :goto_9

    .line 407
    :cond_12
    new-array v1, v8, [I

    .line 408
    .line 409
    fill-array-data v1, :array_1

    .line 410
    .line 411
    .line 412
    new-instance v4, Ljava/util/ArrayList;

    .line 413
    .line 414
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .line 416
    .line 417
    move v5, v6

    .line 418
    :goto_8
    if-ge v5, v8, :cond_14

    .line 419
    .line 420
    aget v7, v1, v5

    .line 421
    .line 422
    invoke-static {v0, v7}, Landroidx/work/impl/utils/Api28Impl;->hasCapability$work_runtime_release(Landroid/net/NetworkRequest;I)Z

    .line 423
    .line 424
    .line 425
    move-result v9

    .line 426
    if-eqz v9, :cond_13

    .line 427
    .line 428
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 429
    .line 430
    .line 431
    move-result-object v7

    .line 432
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    :cond_13
    add-int/lit8 v5, v5, 0x1

    .line 436
    .line 437
    goto :goto_8

    .line 438
    :cond_14
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/List;)[I

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    :goto_9
    array-length v1, p0

    .line 443
    invoke-virtual {v3, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 444
    .line 445
    .line 446
    array-length v1, p0

    .line 447
    move v4, v6

    .line 448
    :goto_a
    if-ge v4, v1, :cond_15

    .line 449
    .line 450
    aget v5, p0, v4

    .line 451
    .line 452
    invoke-virtual {v3, v5}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 453
    .line 454
    .line 455
    add-int/lit8 v4, v4, 0x1

    .line 456
    .line 457
    goto :goto_a

    .line 458
    :catchall_0
    move-exception p0

    .line 459
    goto/16 :goto_12

    .line 460
    .line 461
    :cond_15
    array-length p0, v0

    .line 462
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 463
    .line 464
    .line 465
    array-length p0, v0

    .line 466
    move v1, v6

    .line 467
    :goto_b
    if-ge v1, p0, :cond_16

    .line 468
    .line 469
    aget v4, v0, v1

    .line 470
    .line 471
    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    .line 473
    .line 474
    add-int/lit8 v1, v1, 0x1

    .line 475
    .line 476
    goto :goto_b

    .line 477
    :cond_16
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 478
    .line 479
    .line 480
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 484
    .line 485
    .line 486
    move-result-object p0

    .line 487
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 488
    .line 489
    .line 490
    :goto_c
    const/16 v0, 0x1a

    .line 491
    .line 492
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 493
    .line 494
    .line 495
    iget-boolean p0, p2, Landroidx/work/Constraints;->requiresCharging:Z

    .line 496
    .line 497
    const/16 v0, 0x1b

    .line 498
    .line 499
    int-to-long v1, p0

    .line 500
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 501
    .line 502
    .line 503
    iget-boolean p0, p2, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    .line 504
    .line 505
    const/16 v0, 0x1c

    .line 506
    .line 507
    int-to-long v1, p0

    .line 508
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 509
    .line 510
    .line 511
    iget-boolean p0, p2, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    .line 512
    .line 513
    const/16 v0, 0x1d

    .line 514
    .line 515
    int-to-long v1, p0

    .line 516
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 517
    .line 518
    .line 519
    iget-boolean p0, p2, Landroidx/work/Constraints;->requiresStorageNotLow:Z

    .line 520
    .line 521
    int-to-long v0, p0

    .line 522
    invoke-interface {p1, v8, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 523
    .line 524
    .line 525
    const/16 p0, 0x1f

    .line 526
    .line 527
    iget-wide v0, p2, Landroidx/work/Constraints;->contentTriggerUpdateDelayMillis:J

    .line 528
    .line 529
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 530
    .line 531
    .line 532
    const/16 p0, 0x20

    .line 533
    .line 534
    iget-wide v0, p2, Landroidx/work/Constraints;->contentTriggerMaxDelayMillis:J

    .line 535
    .line 536
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 537
    .line 538
    .line 539
    iget-object p0, p2, Landroidx/work/Constraints;->contentUriTriggers:Ljava/util/Set;

    .line 540
    .line 541
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 542
    .line 543
    .line 544
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 545
    .line 546
    .line 547
    move-result p2

    .line 548
    if-eqz p2, :cond_17

    .line 549
    .line 550
    new-array p0, v6, [B

    .line 551
    .line 552
    goto :goto_e

    .line 553
    :cond_17
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    .line 554
    .line 555
    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 556
    .line 557
    .line 558
    :try_start_3
    new-instance v0, Ljava/io/ObjectOutputStream;

    .line 559
    .line 560
    invoke-direct {v0, p2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 561
    .line 562
    .line 563
    :try_start_4
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 564
    .line 565
    .line 566
    move-result v1

    .line 567
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 568
    .line 569
    .line 570
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 571
    .line 572
    .line 573
    move-result-object p0

    .line 574
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 575
    .line 576
    .line 577
    move-result v1

    .line 578
    if-eqz v1, :cond_18

    .line 579
    .line 580
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    move-result-object v1

    .line 584
    check-cast v1, Landroidx/work/Constraints$ContentUriTrigger;

    .line 585
    .line 586
    iget-object v2, v1, Landroidx/work/Constraints$ContentUriTrigger;->uri:Landroid/net/Uri;

    .line 587
    .line 588
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v2

    .line 592
    invoke-virtual {v0, v2}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    iget-boolean v1, v1, Landroidx/work/Constraints$ContentUriTrigger;->isTriggeredForDescendants:Z

    .line 596
    .line 597
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 598
    .line 599
    .line 600
    goto :goto_d

    .line 601
    :catchall_1
    move-exception p0

    .line 602
    goto :goto_10

    .line 603
    :cond_18
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 604
    .line 605
    .line 606
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 607
    .line 608
    .line 609
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 610
    .line 611
    .line 612
    move-result-object p0

    .line 613
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 614
    .line 615
    .line 616
    :goto_e
    const/16 p2, 0x21

    .line 617
    .line 618
    invoke-interface {p1, p2, p0}, Landroidx/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 619
    .line 620
    .line 621
    :goto_f
    return-void

    .line 622
    :catchall_2
    move-exception p0

    .line 623
    goto :goto_11

    .line 624
    :goto_10
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 625
    :catchall_3
    move-exception p1

    .line 626
    :try_start_7
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 627
    .line 628
    .line 629
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 630
    :goto_11
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 631
    :catchall_4
    move-exception p1

    .line 632
    invoke-static {p2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 633
    .line 634
    .line 635
    throw p1

    .line 636
    :catchall_5
    move-exception p0

    .line 637
    goto :goto_13

    .line 638
    :goto_12
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 639
    :catchall_6
    move-exception p1

    .line 640
    :try_start_a
    invoke-static {v3, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 641
    .line 642
    .line 643
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 644
    :goto_13
    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 645
    :catchall_7
    move-exception p1

    .line 646
    invoke-static {v2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 647
    .line 648
    .line 649
    throw p1

    .line 650
    :pswitch_0
    check-cast p2, Landroidx/work/impl/model/WorkName;

    .line 651
    .line 652
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 653
    .line 654
    .line 655
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 656
    .line 657
    .line 658
    iget-object p0, p2, Landroidx/work/impl/model/WorkName;->name:Ljava/lang/String;

    .line 659
    .line 660
    invoke-interface {p1, p0, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 661
    .line 662
    .line 663
    iget-object p0, p2, Landroidx/work/impl/model/WorkName;->workSpecId:Ljava/lang/String;

    .line 664
    .line 665
    invoke-interface {p1, p0, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 666
    .line 667
    .line 668
    return-void

    .line 669
    :pswitch_1
    check-cast p2, Landroidx/work/impl/model/SystemIdInfo;

    .line 670
    .line 671
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 672
    .line 673
    .line 674
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 675
    .line 676
    .line 677
    iget-object p0, p2, Landroidx/work/impl/model/SystemIdInfo;->workSpecId:Ljava/lang/String;

    .line 678
    .line 679
    invoke-interface {p1, p0, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 680
    .line 681
    .line 682
    iget p0, p2, Landroidx/work/impl/model/SystemIdInfo;->generation:I

    .line 683
    .line 684
    int-to-long v2, p0

    .line 685
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 686
    .line 687
    .line 688
    iget p0, p2, Landroidx/work/impl/model/SystemIdInfo;->systemId:I

    .line 689
    .line 690
    int-to-long v1, p0

    .line 691
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 692
    .line 693
    .line 694
    return-void

    .line 695
    :pswitch_2
    check-cast p2, Landroidx/work/impl/model/Preference;

    .line 696
    .line 697
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 698
    .line 699
    .line 700
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 701
    .line 702
    .line 703
    iget-object p0, p2, Landroidx/work/impl/model/Preference;->key:Ljava/lang/String;

    .line 704
    .line 705
    invoke-interface {p1, p0, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 706
    .line 707
    .line 708
    iget-object p0, p2, Landroidx/work/impl/model/Preference;->value:Ljava/lang/Long;

    .line 709
    .line 710
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 711
    .line 712
    .line 713
    move-result-wide v2

    .line 714
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 715
    .line 716
    .line 717
    return-void

    .line 718
    :pswitch_3
    check-cast p2, Landroidx/work/impl/model/Dependency;

    .line 719
    .line 720
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 721
    .line 722
    .line 723
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 724
    .line 725
    .line 726
    iget-object p0, p2, Landroidx/work/impl/model/Dependency;->workSpecId:Ljava/lang/String;

    .line 727
    .line 728
    invoke-interface {p1, p0, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 729
    .line 730
    .line 731
    iget-object p0, p2, Landroidx/work/impl/model/Dependency;->prerequisiteId:Ljava/lang/String;

    .line 732
    .line 733
    invoke-interface {p1, p0, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 734
    .line 735
    .line 736
    return-void

    .line 737
    :pswitch_4
    check-cast p2, Landroidx/work/impl/model/WorkTag;

    .line 738
    .line 739
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 740
    .line 741
    .line 742
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 743
    .line 744
    .line 745
    iget-object p0, p2, Landroidx/work/impl/model/WorkTag;->tag:Ljava/lang/String;

    .line 746
    .line 747
    invoke-interface {p1, p0, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 748
    .line 749
    .line 750
    iget-object p0, p2, Landroidx/work/impl/model/WorkTag;->workSpecId:Ljava/lang/String;

    .line 751
    .line 752
    invoke-interface {p1, p0, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 753
    .line 754
    .line 755
    return-void

    .line 756
    nop

    .line 757
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    :array_0
    .array-data 4
        0x2
        0x0
        0x3
        0x6
        0xa
        0x9
        0x8
        0x4
        0x1
        0x5
    .end array-data

    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    :array_1
    .array-data 4
        0x11
        0x5
        0x2
        0xa
        0x1d
        0x13
        0x3
        0x20
        0x7
        0x4
        0xc
        0x24
        0x17
        0x0
        0x21
        0x14
        0xb
        0xd
        0x12
        0x15
        0xf
        0x23
        0x22
        0x8
        0x1
        0x19
        0xe
        0x10
        0x6
        0x9
    .end array-data
.end method

.method public insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget v0, p0, Landroidx/work/impl/model/WorkTagDao_Impl$1;->$r8$classId:I

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    const-string v0, "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`next_schedule_time_override`,`next_schedule_time_override_generation`,`stop_reason`,`trace_tag`,`backoff_on_system_interruptions`,`required_network_type`,`required_network_request`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_0
    const-string v0, "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :pswitch_1
    const-string v0, "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_2
    const-string v0, "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_3
    const-string v0, "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :pswitch_4
    const-string v0, "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)"

    .line 28
    .line 29
    :goto_0
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/model/WorkTagDao_Impl$1;->bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    invoke-static {p1, p0}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    :catchall_1
    move-exception p2

    .line 47
    invoke-static {p1, p0}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    throw p2

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
