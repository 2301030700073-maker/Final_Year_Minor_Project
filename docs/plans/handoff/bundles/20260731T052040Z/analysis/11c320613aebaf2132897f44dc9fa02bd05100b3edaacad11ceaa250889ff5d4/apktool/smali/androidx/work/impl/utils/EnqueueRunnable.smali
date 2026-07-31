.class public abstract Landroidx/work/impl/utils/EnqueueRunnable;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


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

.method public static enqueue(Landroidx/work/impl/WorkContinuationImpl;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkContinuationImpl;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Landroidx/work/impl/WorkContinuationImpl;->mIds:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Landroidx/work/impl/WorkContinuationImpl;->prerequisitesFor(Landroidx/work/impl/WorkContinuationImpl;)Ljava/util/HashSet;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v2, p0, Landroidx/work/impl/WorkContinuationImpl;->mIds:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    :goto_0
    if-nez v1, :cond_3

    .line 48
    .line 49
    iget-object v1, v0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 50
    .line 51
    iget-object v2, v0, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 54
    .line 55
    .line 56
    :try_start_0
    invoke-static {v1, v2, p0}, Landroidx/work/impl/utils/EnqueueUtilsKt;->checkContentUriTriggerWorkerLimits(Landroidx/work/impl/WorkDatabase;Landroidx/work/Configuration;Landroidx/work/impl/WorkContinuationImpl;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p0}, Landroidx/work/impl/utils/EnqueueRunnable;->processContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 67
    .line 68
    .line 69
    if-eqz p0, :cond_2

    .line 70
    .line 71
    iget-object p0, v0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 72
    .line 73
    iget-object v0, v0, Landroidx/work/impl/WorkManagerImpl;->mSchedulers:Ljava/util/List;

    .line 74
    .line 75
    invoke-static {v2, p0, v0}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    return-void

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :cond_3
    const-string v0, "WorkContinuation has cycles ("

    .line 85
    .line 86
    const-string v1, ")"

    .line 87
    .line 88
    invoke-static {p0, v1, v0}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m$3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public static processContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z
    .locals 25

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
    move-object v1, v0

    .line 105
    const/4 v0, 0x1

    .line 106
    const/4 v4, 0x0

    .line 107
    goto/16 :goto_13

    .line 108
    .line 109
    :cond_2
    iget-object v3, v3, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 110
    .line 111
    if-ne v3, v12, :cond_3

    .line 112
    .line 113
    const/4 v10, 0x1

    .line 114
    goto :goto_3

    .line 115
    :cond_3
    const/4 v10, 0x0

    .line 116
    :goto_3
    and-int v18, v18, v10

    .line 117
    .line 118
    if-ne v3, v14, :cond_4

    .line 119
    .line 120
    const/16 v17, 0x1

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_4
    if-ne v3, v13, :cond_5

    .line 124
    .line 125
    const/16 v16, 0x1

    .line 126
    .line 127
    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 128
    .line 129
    move-object/from16 v3, v19

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_6
    :goto_5
    move-object/from16 v19, v3

    .line 133
    .line 134
    goto :goto_6

    .line 135
    :cond_7
    const/16 v16, 0x0

    .line 136
    .line 137
    const/16 v17, 0x0

    .line 138
    .line 139
    const/16 v18, 0x1

    .line 140
    .line 141
    goto :goto_5

    .line 142
    :goto_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    sget-object v4, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    .line 147
    .line 148
    if-nez v3, :cond_16

    .line 149
    .line 150
    if-nez v11, :cond_16

    .line 151
    .line 152
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    invoke-virtual {v10, v5}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object v10

    .line 160
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 161
    .line 162
    .line 163
    move-result v15

    .line 164
    if-nez v15, :cond_16

    .line 165
    .line 166
    sget-object v15, Landroidx/work/ExistingWorkPolicy;->APPEND:Landroidx/work/ExistingWorkPolicy;

    .line 167
    .line 168
    move/from16 v20, v3

    .line 169
    .line 170
    sget-object v3, Landroidx/work/ExistingWorkPolicy;->APPEND_OR_REPLACE:Landroidx/work/ExistingWorkPolicy;

    .line 171
    .line 172
    if-eq v6, v15, :cond_c

    .line 173
    .line 174
    if-ne v6, v3, :cond_8

    .line 175
    .line 176
    goto :goto_8

    .line 177
    :cond_8
    sget-object v3, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    .line 178
    .line 179
    if-ne v6, v3, :cond_a

    .line 180
    .line 181
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    if-eqz v6, :cond_a

    .line 190
    .line 191
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    check-cast v6, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 196
    .line 197
    iget-object v6, v6, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    .line 198
    .line 199
    if-eq v6, v4, :cond_1

    .line 200
    .line 201
    sget-object v12, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    .line 202
    .line 203
    if-ne v6, v12, :cond_9

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_a
    new-instance v3, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    .line 207
    .line 208
    const/4 v6, 0x7

    .line 209
    invoke-direct {v3, v6, v9, v5, v2}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    new-instance v6, Landroidx/work/Worker$$ExternalSyntheticLambda0;

    .line 213
    .line 214
    const/16 v12, 0xf

    .line 215
    .line 216
    invoke-direct {v6, v3, v12}, Landroidx/work/Worker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v9, v6}, Landroidx/room/RoomDatabase;->runInTransaction(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    .line 232
    .line 233
    move-result v10

    .line 234
    if-eqz v10, :cond_b

    .line 235
    .line 236
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v10

    .line 240
    check-cast v10, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 241
    .line 242
    iget-object v10, v10, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    .line 243
    .line 244
    invoke-virtual {v3, v10}, Landroidx/work/impl/model/WorkSpecDao_Impl;->delete(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    goto :goto_7

    .line 248
    :cond_b
    move-object/from16 v24, v2

    .line 249
    .line 250
    move-object/from16 v22, v9

    .line 251
    .line 252
    const/4 v0, 0x1

    .line 253
    goto/16 :goto_e

    .line 254
    .line 255
    :cond_c
    :goto_8
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Landroidx/work/impl/model/DependencyDao_Impl;

    .line 256
    .line 257
    .line 258
    move-result-object v11

    .line 259
    new-instance v15, Ljava/util/ArrayList;

    .line 260
    .line 261
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .line 263
    .line 264
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 265
    .line 266
    .line 267
    move-result-object v10

    .line 268
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 269
    .line 270
    .line 271
    move-result v21

    .line 272
    if-eqz v21, :cond_11

    .line 273
    .line 274
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v21

    .line 278
    move-object/from16 v22, v9

    .line 279
    .line 280
    move-object/from16 v9, v21

    .line 281
    .line 282
    check-cast v9, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 283
    .line 284
    move-object/from16 v21, v10

    .line 285
    .line 286
    iget-object v10, v9, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    .line 287
    .line 288
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    .line 293
    .line 294
    iget-object v0, v11, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 295
    .line 296
    move-object/from16 v23, v11

    .line 297
    .line 298
    new-instance v11, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;

    .line 299
    .line 300
    move-object/from16 v24, v2

    .line 301
    .line 302
    const/4 v2, 0x3

    .line 303
    invoke-direct {v11, v10, v2}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 304
    .line 305
    .line 306
    const/4 v2, 0x0

    .line 307
    const/4 v10, 0x1

    .line 308
    invoke-static {v0, v10, v2, v11}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    check-cast v0, Ljava/lang/Boolean;

    .line 313
    .line 314
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-nez v0, :cond_10

    .line 319
    .line 320
    iget-object v0, v9, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    .line 321
    .line 322
    if-ne v0, v12, :cond_d

    .line 323
    .line 324
    const/4 v2, 0x1

    .line 325
    goto :goto_a

    .line 326
    :cond_d
    const/4 v2, 0x0

    .line 327
    :goto_a
    and-int v2, v18, v2

    .line 328
    .line 329
    if-ne v0, v14, :cond_e

    .line 330
    .line 331
    const/16 v17, 0x1

    .line 332
    .line 333
    goto :goto_b

    .line 334
    :cond_e
    if-ne v0, v13, :cond_f

    .line 335
    .line 336
    const/16 v16, 0x1

    .line 337
    .line 338
    :cond_f
    :goto_b
    iget-object v0, v9, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    .line 339
    .line 340
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move/from16 v18, v2

    .line 344
    .line 345
    :cond_10
    move-object/from16 v0, p0

    .line 346
    .line 347
    move-object/from16 v10, v21

    .line 348
    .line 349
    move-object/from16 v9, v22

    .line 350
    .line 351
    move-object/from16 v11, v23

    .line 352
    .line 353
    move-object/from16 v2, v24

    .line 354
    .line 355
    goto :goto_9

    .line 356
    :cond_11
    move-object/from16 v24, v2

    .line 357
    .line 358
    move-object/from16 v22, v9

    .line 359
    .line 360
    if-ne v6, v3, :cond_14

    .line 361
    .line 362
    if-nez v16, :cond_12

    .line 363
    .line 364
    if-eqz v17, :cond_14

    .line 365
    .line 366
    :cond_12
    invoke-virtual/range {v22 .. v22}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-virtual {v0, v5}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 379
    .line 380
    .line 381
    move-result v3

    .line 382
    if-eqz v3, :cond_13

    .line 383
    .line 384
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    check-cast v3, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 389
    .line 390
    iget-object v3, v3, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    .line 391
    .line 392
    invoke-virtual {v0, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl;->delete(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    goto :goto_c

    .line 396
    :cond_13
    sget-object v15, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 397
    .line 398
    const/16 v16, 0x0

    .line 399
    .line 400
    const/16 v17, 0x0

    .line 401
    .line 402
    :cond_14
    invoke-interface {v15, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    move-object v1, v0

    .line 407
    check-cast v1, [Ljava/lang/String;

    .line 408
    .line 409
    array-length v0, v1

    .line 410
    if-lez v0, :cond_15

    .line 411
    .line 412
    const/4 v11, 0x1

    .line 413
    goto :goto_d

    .line 414
    :cond_15
    const/4 v11, 0x0

    .line 415
    :goto_d
    const/4 v0, 0x0

    .line 416
    goto :goto_e

    .line 417
    :cond_16
    move-object/from16 v24, v2

    .line 418
    .line 419
    move/from16 v20, v3

    .line 420
    .line 421
    move-object/from16 v22, v9

    .line 422
    .line 423
    goto :goto_d

    .line 424
    :goto_e
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 425
    .line 426
    .line 427
    move-result-object v2

    .line 428
    move v10, v0

    .line 429
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 430
    .line 431
    .line 432
    move-result v0

    .line 433
    if-eqz v0, :cond_1d

    .line 434
    .line 435
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    check-cast v0, Landroidx/work/WorkRequest;

    .line 440
    .line 441
    iget-object v3, v0, Landroidx/work/WorkRequest;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 442
    .line 443
    iget-object v6, v0, Landroidx/work/WorkRequest;->id:Ljava/util/UUID;

    .line 444
    .line 445
    if-eqz v11, :cond_19

    .line 446
    .line 447
    if-nez v18, :cond_19

    .line 448
    .line 449
    if-eqz v17, :cond_17

    .line 450
    .line 451
    iput-object v14, v3, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 452
    .line 453
    goto :goto_10

    .line 454
    :cond_17
    if-eqz v16, :cond_18

    .line 455
    .line 456
    iput-object v13, v3, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 457
    .line 458
    goto :goto_10

    .line 459
    :cond_18
    sget-object v9, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    .line 460
    .line 461
    iput-object v9, v3, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 462
    .line 463
    goto :goto_10

    .line 464
    :cond_19
    iput-wide v7, v3, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    .line 465
    .line 466
    :goto_10
    iget-object v9, v3, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 467
    .line 468
    if-ne v9, v4, :cond_1a

    .line 469
    .line 470
    const/4 v10, 0x1

    .line 471
    :cond_1a
    invoke-virtual/range {v22 .. v22}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 472
    .line 473
    .line 474
    move-result-object v9

    .line 475
    move-object/from16 v12, v24

    .line 476
    .line 477
    iget-object v15, v12, Landroidx/work/impl/WorkManagerImpl;->mSchedulers:Ljava/util/List;

    .line 478
    .line 479
    invoke-static {v15, v3}, Landroidx/work/impl/utils/EnqueueUtilsKt;->wrapWorkSpecIfNeeded(Ljava/util/List;Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkSpec;

    .line 480
    .line 481
    .line 482
    move-result-object v3

    .line 483
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 484
    .line 485
    .line 486
    iget-object v15, v9, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 487
    .line 488
    move-object/from16 v19, v2

    .line 489
    .line 490
    new-instance v2, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda1;

    .line 491
    .line 492
    move-object/from16 v21, v4

    .line 493
    .line 494
    const/4 v4, 0x0

    .line 495
    invoke-direct {v2, v9, v3, v4}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda1;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/work/impl/model/WorkSpec;I)V

    .line 496
    .line 497
    .line 498
    const/4 v3, 0x1

    .line 499
    invoke-static {v15, v4, v3, v2}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    if-eqz v11, :cond_1b

    .line 503
    .line 504
    array-length v2, v1

    .line 505
    const/4 v3, 0x0

    .line 506
    :goto_11
    if-ge v3, v2, :cond_1b

    .line 507
    .line 508
    aget-object v4, v1, v3

    .line 509
    .line 510
    new-instance v9, Landroidx/work/impl/model/Dependency;

    .line 511
    .line 512
    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v15

    .line 516
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 517
    .line 518
    .line 519
    invoke-direct {v9, v15, v4}, Landroidx/work/impl/model/Dependency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual/range {v22 .. v22}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Landroidx/work/impl/model/DependencyDao_Impl;

    .line 523
    .line 524
    .line 525
    move-result-object v4

    .line 526
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 527
    .line 528
    .line 529
    iget-object v15, v4, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 530
    .line 531
    move-object/from16 v23, v1

    .line 532
    .line 533
    new-instance v1, Landroidx/work/impl/model/WorkTagDao_Impl$$ExternalSyntheticLambda1;

    .line 534
    .line 535
    move/from16 v24, v2

    .line 536
    .line 537
    const/4 v2, 0x2

    .line 538
    invoke-direct {v1, v4, v9, v2}, Landroidx/work/impl/model/WorkTagDao_Impl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 539
    .line 540
    .line 541
    const/4 v2, 0x0

    .line 542
    const/4 v4, 0x1

    .line 543
    invoke-static {v15, v2, v4, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    add-int/lit8 v3, v3, 0x1

    .line 547
    .line 548
    move-object/from16 v1, v23

    .line 549
    .line 550
    move/from16 v2, v24

    .line 551
    .line 552
    goto :goto_11

    .line 553
    :cond_1b
    move-object/from16 v23, v1

    .line 554
    .line 555
    invoke-virtual/range {v22 .. v22}, Landroidx/work/impl/WorkDatabase;->workTagDao()Landroidx/work/impl/model/WorkTagDao_Impl;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v2

    .line 563
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 564
    .line 565
    .line 566
    iget-object v0, v0, Landroidx/work/WorkRequest;->tags:Ljava/util/Set;

    .line 567
    .line 568
    invoke-virtual {v1, v2, v0}, Landroidx/work/impl/model/WorkTagDao_Impl;->insertTags(Ljava/lang/String;Ljava/util/Set;)V

    .line 569
    .line 570
    .line 571
    if-nez v20, :cond_1c

    .line 572
    .line 573
    invoke-virtual/range {v22 .. v22}, Landroidx/work/impl/WorkDatabase;->workNameDao()Landroidx/work/impl/model/WorkNameDao_Impl;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    new-instance v1, Landroidx/work/impl/model/WorkName;

    .line 578
    .line 579
    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v2

    .line 583
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 584
    .line 585
    .line 586
    invoke-direct {v1, v5, v2}, Landroidx/work/impl/model/WorkName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 590
    .line 591
    .line 592
    iget-object v2, v0, Landroidx/work/impl/model/WorkNameDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 593
    .line 594
    new-instance v3, Landroidx/work/impl/model/WorkTagDao_Impl$$ExternalSyntheticLambda1;

    .line 595
    .line 596
    const/4 v4, 0x5

    .line 597
    invoke-direct {v3, v0, v1, v4}, Landroidx/work/impl/model/WorkTagDao_Impl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 598
    .line 599
    .line 600
    const/4 v0, 0x1

    .line 601
    const/4 v4, 0x0

    .line 602
    invoke-static {v2, v4, v0, v3}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    goto :goto_12

    .line 606
    :cond_1c
    const/4 v0, 0x1

    .line 607
    const/4 v4, 0x0

    .line 608
    :goto_12
    move-object/from16 v24, v12

    .line 609
    .line 610
    move-object/from16 v2, v19

    .line 611
    .line 612
    move-object/from16 v4, v21

    .line 613
    .line 614
    move-object/from16 v1, v23

    .line 615
    .line 616
    goto/16 :goto_f

    .line 617
    .line 618
    :cond_1d
    const/4 v0, 0x1

    .line 619
    move-object/from16 v1, p0

    .line 620
    .line 621
    move v4, v10

    .line 622
    :goto_13
    iput-boolean v0, v1, Landroidx/work/impl/WorkContinuationImpl;->mEnqueued:Z

    .line 623
    .line 624
    return v4
.end method
