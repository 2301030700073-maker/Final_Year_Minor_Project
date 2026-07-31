.class public final Landroidx/work/impl/WorkerWrapper;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final appContext:Landroid/content/Context;

.field public final clock:Landroidx/work/SystemClock;

.field public final configuration:Landroidx/work/Configuration;

.field public final dependencyDao:Landroidx/work/impl/model/DependencyDao_Impl;

.field public final foregroundProcessor:Landroidx/work/impl/Processor;

.field public final tags:Ljava/util/ArrayList;

.field public final workDatabase:Landroidx/work/impl/WorkDatabase;

.field public final workDescription:Ljava/lang/String;

.field public final workSpec:Landroidx/work/impl/model/WorkSpec;

.field public final workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

.field public final workSpecId:Ljava/lang/String;

.field public final workTaskExecutor:Lokhttp3/Dispatcher;

.field public final workerJob:Lkotlinx/coroutines/JobImpl;


# direct methods
.method public constructor <init>(Lorg/koin/core/Koin;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lorg/koin/core/Koin;->propertyRegistry:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Landroidx/work/impl/model/WorkSpec;

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 9
    .line 10
    iget-object v1, p1, Lorg/koin/core/Koin;->optionRegistry:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Landroid/content/Context;

    .line 13
    .line 14
    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->appContext:Landroid/content/Context;

    .line 15
    .line 16
    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v1, p1, Lorg/koin/core/Koin;->resolver:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Lokhttp3/Dispatcher;

    .line 23
    .line 24
    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workTaskExecutor:Lokhttp3/Dispatcher;

    .line 25
    .line 26
    iget-object v1, p1, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Landroidx/work/Configuration;

    .line 29
    .line 30
    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->configuration:Landroidx/work/Configuration;

    .line 31
    .line 32
    iget-object v1, v1, Landroidx/work/Configuration;->clock:Landroidx/work/SystemClock;

    .line 33
    .line 34
    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->clock:Landroidx/work/SystemClock;

    .line 35
    .line 36
    iget-object v1, p1, Lorg/koin/core/Koin;->scopeRegistry:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Landroidx/work/impl/Processor;

    .line 39
    .line 40
    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->foregroundProcessor:Landroidx/work/impl/Processor;

    .line 41
    .line 42
    iget-object v1, p1, Lorg/koin/core/Koin;->instanceRegistry:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Landroidx/work/impl/WorkDatabase;

    .line 45
    .line 46
    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workDatabase:Landroidx/work/impl/WorkDatabase;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iput-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 53
    .line 54
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Landroidx/work/impl/model/DependencyDao_Impl;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->dependencyDao:Landroidx/work/impl/model/DependencyDao_Impl;

    .line 59
    .line 60
    iget-object p1, p1, Lorg/koin/core/Koin;->extensionManager:Ljava/lang/Object;

    .line 61
    .line 62
    move-object v1, p1

    .line 63
    check-cast v1, Ljava/util/ArrayList;

    .line 64
    .line 65
    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->tags:Ljava/util/ArrayList;

    .line 66
    .line 67
    const-string p1, "Work [ id="

    .line 68
    .line 69
    const-string v2, ", tags={ "

    .line 70
    .line 71
    invoke-static {p1, v0, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const/4 v5, 0x0

    .line 76
    const/16 v6, 0x3e

    .line 77
    .line 78
    const-string v2, ","

    .line 79
    .line 80
    const/4 v3, 0x0

    .line 81
    const/4 v4, 0x0

    .line 82
    invoke-static/range {v1 .. v6}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v1, " } ]"

    .line 87
    .line 88
    invoke-static {p1, v0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper;->workDescription:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {}, Lkotlinx/coroutines/JobKt;->Job$default()Lkotlinx/coroutines/JobImpl;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper;->workerJob:Lkotlinx/coroutines/JobImpl;

    .line 99
    .line 100
    return-void
.end method

.method public static final access$runWorker(Landroidx/work/impl/WorkerWrapper;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/work/impl/WorkerWrapper;->workDescription:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v1, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, v1, Landroidx/work/impl/WorkerWrapper;->workTaskExecutor:Lokhttp3/Dispatcher;

    .line 10
    .line 11
    iget-object v5, v1, Landroidx/work/impl/WorkerWrapper;->workDatabase:Landroidx/work/impl/WorkDatabase;

    .line 12
    .line 13
    iget-object v6, v1, Landroidx/work/impl/WorkerWrapper;->configuration:Landroidx/work/Configuration;

    .line 14
    .line 15
    iget-object v7, v6, Landroidx/work/Configuration;->tracer:Landroidx/work/SystemClock;

    .line 16
    .line 17
    iget-object v8, v1, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 18
    .line 19
    instance-of v9, v0, Landroidx/work/impl/WorkerWrapper$runWorker$1;

    .line 20
    .line 21
    if-eqz v9, :cond_0

    .line 22
    .line 23
    move-object v9, v0

    .line 24
    check-cast v9, Landroidx/work/impl/WorkerWrapper$runWorker$1;

    .line 25
    .line 26
    iget v10, v9, Landroidx/work/impl/WorkerWrapper$runWorker$1;->label:I

    .line 27
    .line 28
    const/high16 v11, -0x80000000

    .line 29
    .line 30
    and-int v12, v10, v11

    .line 31
    .line 32
    if-eqz v12, :cond_0

    .line 33
    .line 34
    sub-int/2addr v10, v11

    .line 35
    iput v10, v9, Landroidx/work/impl/WorkerWrapper$runWorker$1;->label:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v9, Landroidx/work/impl/WorkerWrapper$runWorker$1;

    .line 39
    .line 40
    invoke-direct {v9, v1, v0}, Landroidx/work/impl/WorkerWrapper$runWorker$1;-><init>(Landroidx/work/impl/WorkerWrapper;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    iget-object v0, v9, Landroidx/work/impl/WorkerWrapper$runWorker$1;->result:Ljava/lang/Object;

    .line 44
    .line 45
    iget v10, v9, Landroidx/work/impl/WorkerWrapper$runWorker$1;->label:I

    .line 46
    .line 47
    const/4 v11, 0x1

    .line 48
    const/4 v12, 0x0

    .line 49
    if-eqz v10, :cond_2

    .line 50
    .line 51
    if-ne v10, v11, :cond_1

    .line 52
    .line 53
    iget-object v1, v9, Landroidx/work/impl/WorkerWrapper$runWorker$1;->L$0:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v1, Landroidx/work/WorkerParameters;

    .line 56
    .line 57
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    move-object/from16 v20, v2

    .line 61
    .line 62
    goto/16 :goto_8

    .line 63
    .line 64
    :catchall_0
    move-exception v0

    .line 65
    move-object/from16 v20, v2

    .line 66
    .line 67
    goto/16 :goto_9

    .line 68
    .line 69
    :catch_0
    move-exception v0

    .line 70
    move-object v4, v2

    .line 71
    goto/16 :goto_a

    .line 72
    .line 73
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 74
    .line 75
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-object v12

    .line 79
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget-object v10, v6, Landroidx/work/Configuration;->workerFactory:Landroidx/work/SystemClock;

    .line 83
    .line 84
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Landroidx/room/Room;->isEnabled()Z

    .line 88
    .line 89
    .line 90
    move-result v13

    .line 91
    iget-object v14, v8, Landroidx/work/impl/model/WorkSpec;->traceTag:Ljava/lang/String;

    .line 92
    .line 93
    iget-object v15, v8, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 94
    .line 95
    move/from16 p1, v11

    .line 96
    .line 97
    iget-object v11, v8, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 98
    .line 99
    if-eqz v13, :cond_5

    .line 100
    .line 101
    if-eqz v14, :cond_5

    .line 102
    .line 103
    invoke-virtual {v8}, Landroidx/work/impl/model/WorkSpec;->hashCode()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 111
    .line 112
    const/16 v16, 0x0

    .line 113
    .line 114
    const/16 v12, 0x1d

    .line 115
    .line 116
    if-lt v7, v12, :cond_3

    .line 117
    .line 118
    invoke-static {v14}, Landroidx/room/Room;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    invoke-static {v0, v7}, Landroidx/tracing/TraceApi29Impl;->beginAsyncSection(ILjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    move-object/from16 v20, v2

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_3
    invoke-static {v14}, Landroidx/room/Room;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    const-string v12, "asyncTraceBegin"

    .line 133
    .line 134
    :try_start_1
    sget-object v17, Landroidx/room/Room;->sAsyncTraceBeginMethod:Ljava/lang/reflect/Method;

    .line 135
    .line 136
    const/16 v18, 0x2

    .line 137
    .line 138
    move/from16 v19, v0

    .line 139
    .line 140
    const/4 v0, 0x3

    .line 141
    if-nez v17, :cond_4

    .line 142
    .line 143
    move-object/from16 v17, v7

    .line 144
    .line 145
    const-class v7, Landroid/os/Trace;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 146
    .line 147
    move-object/from16 v20, v2

    .line 148
    .line 149
    :try_start_2
    new-array v2, v0, [Ljava/lang/Class;

    .line 150
    .line 151
    sget-object v21, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 152
    .line 153
    aput-object v21, v2, v16

    .line 154
    .line 155
    const-class v21, Ljava/lang/String;

    .line 156
    .line 157
    aput-object v21, v2, p1

    .line 158
    .line 159
    sget-object v21, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 160
    .line 161
    aput-object v21, v2, v18

    .line 162
    .line 163
    invoke-virtual {v7, v12, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    sput-object v2, Landroidx/room/Room;->sAsyncTraceBeginMethod:Ljava/lang/reflect/Method;

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :catch_1
    move-exception v0

    .line 171
    goto :goto_2

    .line 172
    :catch_2
    move-exception v0

    .line 173
    move-object/from16 v20, v2

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_4
    move-object/from16 v20, v2

    .line 177
    .line 178
    move-object/from16 v17, v7

    .line 179
    .line 180
    :goto_1
    sget-object v2, Landroidx/room/Room;->sAsyncTraceBeginMethod:Ljava/lang/reflect/Method;

    .line 181
    .line 182
    sget-wide v21, Landroidx/room/Room;->sTraceTagApp:J

    .line 183
    .line 184
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v19

    .line 192
    new-array v0, v0, [Ljava/lang/Object;

    .line 193
    .line 194
    aput-object v7, v0, v16

    .line 195
    .line 196
    aput-object v17, v0, p1

    .line 197
    .line 198
    aput-object v19, v0, v18

    .line 199
    .line 200
    const/4 v7, 0x0

    .line 201
    invoke-virtual {v2, v7, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 202
    .line 203
    .line 204
    goto :goto_3

    .line 205
    :goto_2
    invoke-static {v12, v0}, Landroidx/room/Room;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 206
    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_5
    move-object/from16 v20, v2

    .line 210
    .line 211
    const/16 v16, 0x0

    .line 212
    .line 213
    :goto_3
    new-instance v0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda0;

    .line 214
    .line 215
    move/from16 v2, v16

    .line 216
    .line 217
    invoke-direct {v0, v1, v2}, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/WorkerWrapper;I)V

    .line 218
    .line 219
    .line 220
    new-instance v2, Landroidx/work/Worker$$ExternalSyntheticLambda0;

    .line 221
    .line 222
    const/16 v7, 0xe

    .line 223
    .line 224
    invoke-direct {v2, v0, v7}, Landroidx/work/Worker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v5, v2}, Landroidx/room/RoomDatabase;->runInTransaction(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    check-cast v0, Ljava/lang/Boolean;

    .line 232
    .line 233
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-eqz v0, :cond_6

    .line 238
    .line 239
    new-instance v0, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;

    .line 240
    .line 241
    invoke-direct {v0}, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;-><init>()V

    .line 242
    .line 243
    .line 244
    goto/16 :goto_b

    .line 245
    .line 246
    :cond_6
    invoke-virtual {v8}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-eqz v0, :cond_7

    .line 251
    .line 252
    iget-object v0, v8, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 253
    .line 254
    goto/16 :goto_6

    .line 255
    .line 256
    :cond_7
    iget-object v0, v6, Landroidx/work/Configuration;->inputMergerFactory:Landroidx/work/SystemClock;

    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    sget-object v0, Landroidx/work/InputMergerKt;->TAG:Ljava/lang/String;

    .line 265
    .line 266
    :try_start_3
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    const/4 v2, 0x0

    .line 271
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    check-cast v0, Landroidx/work/OverwritingInputMerger;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 283
    .line 284
    move-object v7, v0

    .line 285
    goto :goto_4

    .line 286
    :catch_3
    move-exception v0

    .line 287
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    sget-object v12, Landroidx/work/InputMergerKt;->TAG:Ljava/lang/String;

    .line 292
    .line 293
    const-string v7, "Trouble instantiating "

    .line 294
    .line 295
    invoke-virtual {v7, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v7

    .line 299
    invoke-virtual {v2, v12, v7, v0}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    .line 301
    .line 302
    const/4 v7, 0x0

    .line 303
    :goto_4
    if-nez v7, :cond_8

    .line 304
    .line 305
    sget-object v0, Landroidx/work/impl/WorkerWrapperKt;->TAG:Ljava/lang/String;

    .line 306
    .line 307
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    const-string v2, "Could not create Input Merger "

    .line 312
    .line 313
    invoke-virtual {v2, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    invoke-virtual {v1, v0, v2}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    new-instance v0, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;

    .line 321
    .line 322
    invoke-direct {v0}, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;-><init>()V

    .line 323
    .line 324
    .line 325
    goto/16 :goto_b

    .line 326
    .line 327
    :cond_8
    iget-object v0, v8, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 328
    .line 329
    invoke-static {v0}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    iget-object v2, v1, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 334
    .line 335
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    iget-object v2, v2, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 342
    .line 343
    new-instance v7, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;

    .line 344
    .line 345
    const/16 v8, 0x10

    .line 346
    .line 347
    invoke-direct {v7, v3, v8}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 348
    .line 349
    .line 350
    move/from16 v11, p1

    .line 351
    .line 352
    const/4 v8, 0x0

    .line 353
    invoke-static {v2, v11, v8, v7}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    check-cast v2, Ljava/util/List;

    .line 358
    .line 359
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    new-instance v2, Landroidx/work/Data$Builder;

    .line 364
    .line 365
    invoke-direct {v2, v8}, Landroidx/work/Data$Builder;-><init>(I)V

    .line 366
    .line 367
    .line 368
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 369
    .line 370
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 378
    .line 379
    .line 380
    move-result v8

    .line 381
    if-eqz v8, :cond_9

    .line 382
    .line 383
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v8

    .line 387
    check-cast v8, Landroidx/work/Data;

    .line 388
    .line 389
    iget-object v8, v8, Landroidx/work/Data;->values:Ljava/util/HashMap;

    .line 390
    .line 391
    invoke-static {v8}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 392
    .line 393
    .line 394
    move-result-object v8

    .line 395
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 396
    .line 397
    .line 398
    invoke-interface {v7, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 399
    .line 400
    .line 401
    goto :goto_5

    .line 402
    :cond_9
    invoke-virtual {v2, v7}, Landroidx/work/Data$Builder;->putAll(Ljava/util/HashMap;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    :goto_6
    new-instance v2, Landroidx/work/WorkerParameters;

    .line 410
    .line 411
    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    iget-object v7, v1, Landroidx/work/impl/WorkerWrapper;->tags:Ljava/util/ArrayList;

    .line 416
    .line 417
    iget-object v8, v6, Landroidx/work/Configuration;->executor:Ljava/util/concurrent/ExecutorService;

    .line 418
    .line 419
    iget-object v6, v6, Landroidx/work/Configuration;->workerCoroutineContext:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 420
    .line 421
    new-instance v11, Landroidx/work/impl/utils/WorkProgressUpdater;

    .line 422
    .line 423
    new-instance v11, Landroidx/work/impl/utils/WorkForegroundUpdater;

    .line 424
    .line 425
    iget-object v12, v1, Landroidx/work/impl/WorkerWrapper;->foregroundProcessor:Landroidx/work/impl/Processor;

    .line 426
    .line 427
    invoke-direct {v11, v5, v12, v4}, Landroidx/work/impl/utils/WorkForegroundUpdater;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/Processor;Lokhttp3/Dispatcher;)V

    .line 428
    .line 429
    .line 430
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 431
    .line 432
    .line 433
    iput-object v3, v2, Landroidx/work/WorkerParameters;->mId:Ljava/util/UUID;

    .line 434
    .line 435
    iput-object v0, v2, Landroidx/work/WorkerParameters;->mInputData:Landroidx/work/Data;

    .line 436
    .line 437
    new-instance v0, Ljava/util/HashSet;

    .line 438
    .line 439
    invoke-direct {v0, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 440
    .line 441
    .line 442
    iput-object v8, v2, Landroidx/work/WorkerParameters;->mBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 443
    .line 444
    iput-object v6, v2, Landroidx/work/WorkerParameters;->mWorkerContext:Lkotlin/coroutines/CoroutineContext;

    .line 445
    .line 446
    iput-object v4, v2, Landroidx/work/WorkerParameters;->mWorkTaskExecutor:Lokhttp3/Dispatcher;

    .line 447
    .line 448
    iput-object v10, v2, Landroidx/work/WorkerParameters;->mWorkerFactory:Landroidx/work/SystemClock;

    .line 449
    .line 450
    iput-object v11, v2, Landroidx/work/WorkerParameters;->mForegroundUpdater:Landroidx/work/impl/utils/WorkForegroundUpdater;

    .line 451
    .line 452
    :try_start_4
    iget-object v0, v1, Landroidx/work/impl/WorkerWrapper;->appContext:Landroid/content/Context;

    .line 453
    .line 454
    invoke-virtual {v10, v0, v15, v2}, Landroidx/work/SystemClock;->createWorkerWithDefaultFallback(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    .line 455
    .line 456
    .line 457
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 458
    const/4 v3, 0x1

    .line 459
    iput-boolean v3, v0, Landroidx/work/ListenableWorker;->mUsed:Z

    .line 460
    .line 461
    invoke-virtual {v9}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 462
    .line 463
    .line 464
    move-result-object v6

    .line 465
    sget-object v7, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    .line 466
    .line 467
    invoke-interface {v6, v7}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 468
    .line 469
    .line 470
    move-result-object v6

    .line 471
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 472
    .line 473
    .line 474
    check-cast v6, Lkotlinx/coroutines/Job;

    .line 475
    .line 476
    new-instance v7, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;

    .line 477
    .line 478
    invoke-direct {v7, v0, v13, v14, v1}, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;-><init>(Landroidx/work/ListenableWorker;ZLjava/lang/String;Landroidx/work/impl/WorkerWrapper;)V

    .line 479
    .line 480
    .line 481
    invoke-interface {v6, v7}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 482
    .line 483
    .line 484
    new-instance v7, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda0;

    .line 485
    .line 486
    invoke-direct {v7, v1, v3}, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/WorkerWrapper;I)V

    .line 487
    .line 488
    .line 489
    new-instance v3, Landroidx/work/Worker$$ExternalSyntheticLambda0;

    .line 490
    .line 491
    const/16 v8, 0xe

    .line 492
    .line 493
    invoke-direct {v3, v7, v8}, Landroidx/work/Worker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v5, v3}, Landroidx/room/RoomDatabase;->runInTransaction(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v3

    .line 500
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 501
    .line 502
    .line 503
    check-cast v3, Ljava/lang/Boolean;

    .line 504
    .line 505
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 506
    .line 507
    .line 508
    move-result v3

    .line 509
    if-nez v3, :cond_a

    .line 510
    .line 511
    new-instance v0, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;

    .line 512
    .line 513
    invoke-direct {v0}, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;-><init>()V

    .line 514
    .line 515
    .line 516
    goto/16 :goto_b

    .line 517
    .line 518
    :cond_a
    invoke-interface {v6}, Lkotlinx/coroutines/Job;->isCancelled()Z

    .line 519
    .line 520
    .line 521
    move-result v3

    .line 522
    if-eqz v3, :cond_b

    .line 523
    .line 524
    new-instance v0, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;

    .line 525
    .line 526
    invoke-direct {v0}, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;-><init>()V

    .line 527
    .line 528
    .line 529
    goto/16 :goto_b

    .line 530
    .line 531
    :cond_b
    iget-object v3, v4, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 532
    .line 533
    check-cast v3, Landroidx/core/os/ExecutorCompat$HandlerExecutor;

    .line 534
    .line 535
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 536
    .line 537
    .line 538
    invoke-static {v3}, Lkotlinx/coroutines/JobKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    .line 539
    .line 540
    .line 541
    move-result-object v3

    .line 542
    :try_start_5
    new-instance v4, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;

    .line 543
    .line 544
    const/4 v7, 0x0

    .line 545
    invoke-direct {v4, v1, v0, v11, v7}, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;-><init>(Landroidx/work/impl/WorkerWrapper;Landroidx/work/ListenableWorker;Landroidx/work/ForegroundUpdater;Lkotlin/coroutines/Continuation;)V

    .line 546
    .line 547
    .line 548
    iput-object v2, v9, Landroidx/work/impl/WorkerWrapper$runWorker$1;->L$0:Ljava/lang/Object;

    .line 549
    .line 550
    const/4 v11, 0x1

    .line 551
    iput v11, v9, Landroidx/work/impl/WorkerWrapper$runWorker$1;->label:I

    .line 552
    .line 553
    invoke-static {v3, v4, v9}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v0
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 557
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 558
    .line 559
    if-ne v0, v1, :cond_c

    .line 560
    .line 561
    :goto_7
    move-object v0, v1

    .line 562
    goto :goto_b

    .line 563
    :cond_c
    :goto_8
    :try_start_6
    check-cast v0, Landroidx/work/ListenableWorker$Result;

    .line 564
    .line 565
    new-instance v1, Landroidx/work/impl/WorkerWrapper$Resolution$Finished;

    .line 566
    .line 567
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 568
    .line 569
    .line 570
    invoke-direct {v1, v0}, Landroidx/work/impl/WorkerWrapper$Resolution$Finished;-><init>(Landroidx/work/ListenableWorker$Result;)V
    :try_end_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 571
    .line 572
    .line 573
    goto :goto_7

    .line 574
    :catchall_1
    move-exception v0

    .line 575
    goto :goto_9

    .line 576
    :catch_4
    move-exception v0

    .line 577
    move-object/from16 v4, v20

    .line 578
    .line 579
    goto :goto_a

    .line 580
    :goto_9
    sget-object v1, Landroidx/work/impl/WorkerWrapperKt;->TAG:Ljava/lang/String;

    .line 581
    .line 582
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 583
    .line 584
    .line 585
    move-result-object v2

    .line 586
    new-instance v3, Ljava/lang/StringBuilder;

    .line 587
    .line 588
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 589
    .line 590
    .line 591
    move-object/from16 v4, v20

    .line 592
    .line 593
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    const-string v4, " failed because it threw an exception/error"

    .line 597
    .line 598
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v3

    .line 605
    invoke-virtual {v2, v1, v3, v0}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 606
    .line 607
    .line 608
    new-instance v0, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;

    .line 609
    .line 610
    invoke-direct {v0}, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;-><init>()V

    .line 611
    .line 612
    .line 613
    goto :goto_b

    .line 614
    :goto_a
    sget-object v1, Landroidx/work/impl/WorkerWrapperKt;->TAG:Ljava/lang/String;

    .line 615
    .line 616
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 617
    .line 618
    .line 619
    move-result-object v2

    .line 620
    const-string v3, " was cancelled"

    .line 621
    .line 622
    invoke-static {v4, v3}, Landroidx/compose/ui/node/Owner$-CC;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v3

    .line 626
    iget v2, v2, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    .line 627
    .line 628
    const/4 v4, 0x4

    .line 629
    if-gt v2, v4, :cond_d

    .line 630
    .line 631
    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 632
    .line 633
    .line 634
    :cond_d
    throw v0

    .line 635
    :catchall_2
    sget-object v0, Landroidx/work/impl/WorkerWrapperKt;->TAG:Ljava/lang/String;

    .line 636
    .line 637
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 638
    .line 639
    .line 640
    move-result-object v1

    .line 641
    new-instance v2, Ljava/lang/StringBuilder;

    .line 642
    .line 643
    const-string v3, "Could not create Worker "

    .line 644
    .line 645
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v2

    .line 655
    invoke-virtual {v1, v0, v2}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    new-instance v0, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;

    .line 659
    .line 660
    invoke-direct {v0}, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;-><init>()V

    .line 661
    .line 662
    .line 663
    :goto_b
    return-object v0
.end method


# virtual methods
.method public final reschedule(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 2
    .line 3
    sget-object v1, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->clock:Landroidx/work/SystemClock;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    invoke-virtual {v0, v2, v3, v4}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setLastEnqueueTime(Ljava/lang/String;J)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 23
    .line 24
    iget p0, p0, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverrideGeneration:I

    .line 25
    .line 26
    invoke-virtual {v0, p0, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->resetWorkSpecNextScheduleTimeOverride(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-wide/16 v3, -0x1

    .line 30
    .line 31
    invoke-virtual {v0, v2, v3, v4}, Landroidx/work/impl/model/WorkSpecDao_Impl;->markWorkSpecScheduled(Ljava/lang/String;J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setStopReason(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final resetPeriodic()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->clock:Landroidx/work/SystemClock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v2, v3, v0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setLastEnqueueTime(Ljava/lang/String;J)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    .line 18
    .line 19
    invoke-virtual {v2, v0, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, v2, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 23
    .line 24
    new-instance v1, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    const/16 v4, 0xe

    .line 27
    .line 28
    invoke-direct {v1, v3, v4}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x1

    .line 33
    invoke-static {v0, v4, v5, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/Number;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 43
    .line 44
    iget p0, p0, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverrideGeneration:I

    .line 45
    .line 46
    invoke-virtual {v2, p0, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl;->resetWorkSpecNextScheduleTimeOverride(ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance p0, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    const/16 v1, 0xf

    .line 52
    .line 53
    invoke-direct {p0, v3, v1}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v4, v5, p0}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    const-wide/16 v0, -0x1

    .line 60
    .line 61
    invoke-virtual {v2, v3, v0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->markWorkSpecScheduled(Ljava/lang/String;J)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final setFailed(Landroidx/work/ListenableWorker$Result;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 5
    .line 6
    filled-new-array {v0}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lorg/jsoup/Jsoup;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v3, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    sget-object v5, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    .line 33
    .line 34
    if-eq v4, v5, :cond_0

    .line 35
    .line 36
    sget-object v4, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    .line 37
    .line 38
    invoke-virtual {v3, v4, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->dependencyDao:Landroidx/work/impl/model/DependencyDao_Impl;

    .line 42
    .line 43
    invoke-virtual {v3, v2}, Landroidx/work/impl/model/DependencyDao_Impl;->getDependentWorkIds(Ljava/lang/String;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    check-cast p1, Landroidx/work/ListenableWorker$Result$Failure;

    .line 52
    .line 53
    iget-object p1, p1, Landroidx/work/ListenableWorker$Result$Failure;->mOutputData:Landroidx/work/Data;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 59
    .line 60
    iget p0, p0, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverrideGeneration:I

    .line 61
    .line 62
    invoke-virtual {v3, p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->resetWorkSpecNextScheduleTimeOverride(ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object p0, v3, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 66
    .line 67
    new-instance v1, Landroidx/work/impl/model/WorkTagDao_Impl$$ExternalSyntheticLambda1;

    .line 68
    .line 69
    const/4 v2, 0x7

    .line 70
    invoke-direct {v1, p1, v0, v2}, Landroidx/work/impl/model/WorkTagDao_Impl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 71
    .line 72
    .line 73
    const/4 p1, 0x0

    .line 74
    const/4 v0, 0x1

    .line 75
    invoke-static {p0, p1, v0, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    return-void
.end method
