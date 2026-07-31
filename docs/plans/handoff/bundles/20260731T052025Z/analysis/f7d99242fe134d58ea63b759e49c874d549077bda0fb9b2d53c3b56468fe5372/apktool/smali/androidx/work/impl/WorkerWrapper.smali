.class public final Landroidx/work/impl/WorkerWrapper;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


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
.method public constructor <init>(Landroidx/appcompat/widget/TooltipPopup;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Landroidx/work/impl/model/WorkSpec;

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 9
    .line 10
    iget-object v1, p1, Landroidx/appcompat/widget/TooltipPopup;->mContext:Ljava/lang/Object;

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
    iget-object v1, p1, Landroidx/appcompat/widget/TooltipPopup;->mMessageView:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Lokhttp3/Dispatcher;

    .line 23
    .line 24
    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workTaskExecutor:Lokhttp3/Dispatcher;

    .line 25
    .line 26
    iget-object v1, p1, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Ljava/lang/Object;

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
    iget-object v1, p1, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Landroidx/work/impl/Processor;

    .line 39
    .line 40
    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->foregroundProcessor:Landroidx/work/impl/Processor;

    .line 41
    .line 42
    iget-object v1, p1, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Ljava/lang/Object;

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
    iget-object p1, p1, Landroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:Ljava/lang/Object;

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
    invoke-static {p1, v0, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    invoke-static/range {v1 .. v6}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v1, " } ]"

    .line 87
    .line 88
    invoke-static {p1, v0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
    iget-object v6, v1, Landroidx/work/impl/WorkerWrapper;->workDescription:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, v1, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v7, v1, Landroidx/work/impl/WorkerWrapper;->workTaskExecutor:Lokhttp3/Dispatcher;

    .line 10
    .line 11
    iget-object v8, v1, Landroidx/work/impl/WorkerWrapper;->workDatabase:Landroidx/work/impl/WorkDatabase;

    .line 12
    .line 13
    iget-object v3, v1, Landroidx/work/impl/WorkerWrapper;->configuration:Landroidx/work/Configuration;

    .line 14
    .line 15
    iget-object v4, v3, Landroidx/work/Configuration;->tracer:Landroidx/work/SystemClock;

    .line 16
    .line 17
    iget-object v5, v1, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

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
    if-eqz v10, :cond_2

    .line 49
    .line 50
    if-ne v10, v11, :cond_1

    .line 51
    .line 52
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    goto/16 :goto_9

    .line 56
    .line 57
    :catchall_0
    move-exception v0

    .line 58
    goto/16 :goto_a

    .line 59
    .line 60
    :catch_0
    move-exception v0

    .line 61
    goto/16 :goto_b

    .line 62
    .line 63
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 64
    .line 65
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    return-object v0

    .line 70
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget-object v10, v3, Landroidx/work/Configuration;->workerFactory:Landroidx/work/WorkerFactory;

    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lorg/slf4j/helpers/Util;->isEnabled()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    iget-object v12, v5, Landroidx/work/impl/model/WorkSpec;->traceTag:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v13, v5, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v14, v5, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 87
    .line 88
    move/from16 p1, v11

    .line 89
    .line 90
    if-eqz v4, :cond_6

    .line 91
    .line 92
    if-eqz v12, :cond_6

    .line 93
    .line 94
    invoke-virtual {v5}, Landroidx/work/impl/model/WorkSpec;->hashCode()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    const/16 v16, 0x0

    .line 99
    .line 100
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 101
    .line 102
    const/16 v11, 0x1d

    .line 103
    .line 104
    if-lt v15, v11, :cond_3

    .line 105
    .line 106
    invoke-static {v12}, Lorg/slf4j/helpers/Util;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v11

    .line 110
    invoke-static {v11, v0}, Landroidx/tracing/TraceApi29Impl;->beginAsyncSection(Ljava/lang/String;I)V

    .line 111
    .line 112
    .line 113
    move/from16 v17, v4

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_3
    invoke-static {v12}, Lorg/slf4j/helpers/Util;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v11

    .line 120
    const-string v15, "asyncTraceBegin"

    .line 121
    .line 122
    :try_start_1
    sget-object v17, Lorg/slf4j/helpers/Util;->asyncTraceBeginMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 123
    .line 124
    const/16 v18, 0x2

    .line 125
    .line 126
    move/from16 v19, v0

    .line 127
    .line 128
    const/4 v0, 0x3

    .line 129
    if-nez v17, :cond_4

    .line 130
    .line 131
    move/from16 v17, v4

    .line 132
    .line 133
    :try_start_2
    const-class v4, Landroid/os/Trace;

    .line 134
    .line 135
    move-object/from16 v20, v11

    .line 136
    .line 137
    new-array v11, v0, [Ljava/lang/Class;

    .line 138
    .line 139
    sget-object v21, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 140
    .line 141
    aput-object v21, v11, v16

    .line 142
    .line 143
    const-class v21, Ljava/lang/String;

    .line 144
    .line 145
    aput-object v21, v11, p1

    .line 146
    .line 147
    sget-object v21, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 148
    .line 149
    aput-object v21, v11, v18

    .line 150
    .line 151
    invoke-virtual {v4, v15, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    sput-object v4, Lorg/slf4j/helpers/Util;->asyncTraceBeginMethod:Ljava/lang/reflect/Method;

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :catch_1
    move-exception v0

    .line 159
    goto :goto_2

    .line 160
    :cond_4
    move/from16 v17, v4

    .line 161
    .line 162
    move-object/from16 v20, v11

    .line 163
    .line 164
    :goto_1
    sget-object v4, Lorg/slf4j/helpers/Util;->asyncTraceBeginMethod:Ljava/lang/reflect/Method;

    .line 165
    .line 166
    if-eqz v4, :cond_5

    .line 167
    .line 168
    sget-wide v21, Lorg/slf4j/helpers/Util;->traceTagApp:J

    .line 169
    .line 170
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 171
    .line 172
    .line 173
    move-result-object v11

    .line 174
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v19

    .line 178
    new-array v0, v0, [Ljava/lang/Object;

    .line 179
    .line 180
    aput-object v11, v0, v16

    .line 181
    .line 182
    aput-object v20, v0, p1

    .line 183
    .line 184
    aput-object v19, v0, v18

    .line 185
    .line 186
    const/4 v11, 0x0

    .line 187
    invoke-virtual {v4, v11, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_5
    const-string v0, "Required value was null."

    .line 192
    .line 193
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 194
    .line 195
    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 199
    :catch_2
    move-exception v0

    .line 200
    move/from16 v17, v4

    .line 201
    .line 202
    :goto_2
    invoke-static {v0, v15}, Lorg/slf4j/helpers/Util;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_6
    move/from16 v17, v4

    .line 207
    .line 208
    const/16 v16, 0x0

    .line 209
    .line 210
    :goto_3
    new-instance v0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda0;

    .line 211
    .line 212
    move/from16 v4, v16

    .line 213
    .line 214
    invoke-direct {v0, v4, v1}, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v8, v0}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    check-cast v0, Ljava/lang/Boolean;

    .line 222
    .line 223
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-eqz v0, :cond_7

    .line 228
    .line 229
    new-instance v0, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;

    .line 230
    .line 231
    invoke-direct {v0}, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;-><init>()V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_c

    .line 235
    .line 236
    :cond_7
    invoke-virtual {v5}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-eqz v0, :cond_8

    .line 241
    .line 242
    iget-object v0, v5, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 243
    .line 244
    goto/16 :goto_7

    .line 245
    .line 246
    :cond_8
    iget-object v0, v3, Landroidx/work/Configuration;->inputMergerFactory:Landroidx/work/SystemClock;

    .line 247
    .line 248
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    .line 253
    .line 254
    sget-object v0, Landroidx/work/InputMergerKt;->TAG:Ljava/lang/String;

    .line 255
    .line 256
    :try_start_3
    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 260
    const/4 v11, 0x0

    .line 261
    :try_start_4
    invoke-virtual {v0, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {v0, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    check-cast v0, Landroidx/work/OverwritingInputMerger;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 273
    .line 274
    move-object v11, v0

    .line 275
    goto :goto_5

    .line 276
    :catch_3
    move-exception v0

    .line 277
    goto :goto_4

    .line 278
    :catch_4
    move-exception v0

    .line 279
    const/4 v11, 0x0

    .line 280
    :goto_4
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    sget-object v15, Landroidx/work/InputMergerKt;->TAG:Ljava/lang/String;

    .line 285
    .line 286
    const-string v11, "Trouble instantiating "

    .line 287
    .line 288
    invoke-virtual {v11, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v11

    .line 292
    invoke-virtual {v4, v15, v11, v0}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 293
    .line 294
    .line 295
    const/4 v11, 0x0

    .line 296
    :goto_5
    if-nez v11, :cond_9

    .line 297
    .line 298
    sget-object v0, Landroidx/work/impl/WorkerWrapperKt;->TAG:Ljava/lang/String;

    .line 299
    .line 300
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    const-string v2, "Could not create Input Merger "

    .line 305
    .line 306
    invoke-virtual {v2, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    invoke-virtual {v1, v0, v2}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    new-instance v0, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;

    .line 314
    .line 315
    invoke-direct {v0}, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;-><init>()V

    .line 316
    .line 317
    .line 318
    goto/16 :goto_c

    .line 319
    .line 320
    :cond_9
    iget-object v0, v5, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 321
    .line 322
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    iget-object v4, v1, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 327
    .line 328
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    iget-object v4, v4, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 335
    .line 336
    new-instance v5, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;

    .line 337
    .line 338
    const/16 v11, 0x14

    .line 339
    .line 340
    invoke-direct {v5, v2, v11}, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;I)V

    .line 341
    .line 342
    .line 343
    move/from16 v14, p1

    .line 344
    .line 345
    const/4 v11, 0x0

    .line 346
    invoke-static {v4, v14, v11, v5}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v4

    .line 350
    check-cast v4, Ljava/util/List;

    .line 351
    .line 352
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    new-instance v4, Landroidx/work/Data$Builder;

    .line 357
    .line 358
    invoke-direct {v4, v11}, Landroidx/work/Data$Builder;-><init>(I)V

    .line 359
    .line 360
    .line 361
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 362
    .line 363
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 371
    .line 372
    .line 373
    move-result v11

    .line 374
    if-eqz v11, :cond_a

    .line 375
    .line 376
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v11

    .line 380
    check-cast v11, Landroidx/work/Data;

    .line 381
    .line 382
    iget-object v11, v11, Landroidx/work/Data;->values:Ljava/util/HashMap;

    .line 383
    .line 384
    invoke-static {v11}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 385
    .line 386
    .line 387
    move-result-object v11

    .line 388
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    .line 390
    .line 391
    invoke-interface {v5, v11}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 392
    .line 393
    .line 394
    goto :goto_6

    .line 395
    :cond_a
    invoke-virtual {v4, v5}, Landroidx/work/Data$Builder;->putAll(Ljava/util/HashMap;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v4}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    :goto_7
    new-instance v4, Landroidx/work/WorkerParameters;

    .line 403
    .line 404
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 405
    .line 406
    .line 407
    move-result-object v2

    .line 408
    iget-object v5, v1, Landroidx/work/impl/WorkerWrapper;->tags:Ljava/util/ArrayList;

    .line 409
    .line 410
    iget-object v11, v3, Landroidx/work/Configuration;->executor:Ljava/util/concurrent/ExecutorService;

    .line 411
    .line 412
    iget-object v3, v3, Landroidx/work/Configuration;->workerCoroutineContext:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 413
    .line 414
    new-instance v14, Landroidx/work/impl/utils/WorkProgressUpdater;

    .line 415
    .line 416
    new-instance v14, Landroidx/work/impl/utils/WorkForegroundUpdater;

    .line 417
    .line 418
    iget-object v15, v1, Landroidx/work/impl/WorkerWrapper;->foregroundProcessor:Landroidx/work/impl/Processor;

    .line 419
    .line 420
    invoke-direct {v14, v8, v15, v7}, Landroidx/work/impl/utils/WorkForegroundUpdater;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/Processor;Lokhttp3/Dispatcher;)V

    .line 421
    .line 422
    .line 423
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 424
    .line 425
    .line 426
    iput-object v2, v4, Landroidx/work/WorkerParameters;->mId:Ljava/util/UUID;

    .line 427
    .line 428
    iput-object v0, v4, Landroidx/work/WorkerParameters;->mInputData:Landroidx/work/Data;

    .line 429
    .line 430
    new-instance v0, Ljava/util/HashSet;

    .line 431
    .line 432
    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 433
    .line 434
    .line 435
    iput-object v11, v4, Landroidx/work/WorkerParameters;->mBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 436
    .line 437
    iput-object v3, v4, Landroidx/work/WorkerParameters;->mWorkerContext:Lkotlin/coroutines/CoroutineContext;

    .line 438
    .line 439
    iput-object v7, v4, Landroidx/work/WorkerParameters;->mWorkTaskExecutor:Lokhttp3/Dispatcher;

    .line 440
    .line 441
    iput-object v10, v4, Landroidx/work/WorkerParameters;->mWorkerFactory:Landroidx/work/WorkerFactory;

    .line 442
    .line 443
    :try_start_5
    iget-object v0, v1, Landroidx/work/impl/WorkerWrapper;->appContext:Landroid/content/Context;

    .line 444
    .line 445
    invoke-virtual {v10, v0, v13, v4}, Landroidx/work/WorkerFactory;->createWorkerWithDefaultFallback(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    .line 446
    .line 447
    .line 448
    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 449
    const/4 v10, 0x1

    .line 450
    iput-boolean v10, v2, Landroidx/work/ListenableWorker;->mUsed:Z

    .line 451
    .line 452
    invoke-interface {v9}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    sget-object v3, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    .line 457
    .line 458
    invoke-interface {v0, v3}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 463
    .line 464
    .line 465
    move-object v11, v0

    .line 466
    check-cast v11, Lkotlinx/coroutines/Job;

    .line 467
    .line 468
    new-instance v0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;

    .line 469
    .line 470
    const/4 v5, 0x0

    .line 471
    move-object v4, v1

    .line 472
    move-object v1, v2

    .line 473
    move-object v3, v12

    .line 474
    move/from16 v2, v17

    .line 475
    .line 476
    invoke-direct/range {v0 .. v5}, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;I)V

    .line 477
    .line 478
    .line 479
    move-object v2, v1

    .line 480
    move-object v1, v4

    .line 481
    invoke-interface {v11, v0}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 482
    .line 483
    .line 484
    new-instance v0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda0;

    .line 485
    .line 486
    invoke-direct {v0, v10, v1}, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v8, v0}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 494
    .line 495
    .line 496
    check-cast v0, Ljava/lang/Boolean;

    .line 497
    .line 498
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 499
    .line 500
    .line 501
    move-result v0

    .line 502
    if-nez v0, :cond_b

    .line 503
    .line 504
    new-instance v0, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;

    .line 505
    .line 506
    invoke-direct {v0}, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;-><init>()V

    .line 507
    .line 508
    .line 509
    goto/16 :goto_c

    .line 510
    .line 511
    :cond_b
    invoke-interface {v11}, Lkotlinx/coroutines/Job;->isCancelled()Z

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    if-eqz v0, :cond_c

    .line 516
    .line 517
    new-instance v0, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;

    .line 518
    .line 519
    invoke-direct {v0}, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;-><init>()V

    .line 520
    .line 521
    .line 522
    goto/16 :goto_c

    .line 523
    .line 524
    :cond_c
    iget-object v0, v7, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 525
    .line 526
    check-cast v0, Landroidx/camera/core/impl/utils/executor/IoExecutor;

    .line 527
    .line 528
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 529
    .line 530
    .line 531
    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    .line 532
    .line 533
    .line 534
    move-result-object v7

    .line 535
    :try_start_6
    new-instance v0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 536
    .line 537
    const/16 v5, 0xb

    .line 538
    .line 539
    move-object v3, v14

    .line 540
    const/4 v4, 0x0

    .line 541
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 542
    .line 543
    .line 544
    const/4 v14, 0x1

    .line 545
    iput v14, v9, Landroidx/work/impl/WorkerWrapper$runWorker$1;->label:I

    .line 546
    .line 547
    invoke-static {v7, v0, v9}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v0
    :try_end_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 551
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 552
    .line 553
    if-ne v0, v1, :cond_d

    .line 554
    .line 555
    :goto_8
    move-object v0, v1

    .line 556
    goto :goto_c

    .line 557
    :cond_d
    :goto_9
    :try_start_7
    check-cast v0, Landroidx/work/ListenableWorker$Result;

    .line 558
    .line 559
    new-instance v1, Landroidx/work/impl/WorkerWrapper$Resolution$Finished;

    .line 560
    .line 561
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 562
    .line 563
    .line 564
    invoke-direct {v1, v0}, Landroidx/work/impl/WorkerWrapper$Resolution$Finished;-><init>(Landroidx/work/ListenableWorker$Result;)V
    :try_end_7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 565
    .line 566
    .line 567
    goto :goto_8

    .line 568
    :goto_a
    sget-object v1, Landroidx/work/impl/WorkerWrapperKt;->TAG:Ljava/lang/String;

    .line 569
    .line 570
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 571
    .line 572
    .line 573
    move-result-object v2

    .line 574
    new-instance v3, Ljava/lang/StringBuilder;

    .line 575
    .line 576
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    const-string v4, " failed because it threw an exception/error"

    .line 583
    .line 584
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v3

    .line 591
    invoke-virtual {v2, v1, v3, v0}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 592
    .line 593
    .line 594
    new-instance v0, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;

    .line 595
    .line 596
    invoke-direct {v0}, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;-><init>()V

    .line 597
    .line 598
    .line 599
    goto :goto_c

    .line 600
    :goto_b
    sget-object v1, Landroidx/work/impl/WorkerWrapperKt;->TAG:Ljava/lang/String;

    .line 601
    .line 602
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 603
    .line 604
    .line 605
    move-result-object v2

    .line 606
    const-string v3, " was cancelled"

    .line 607
    .line 608
    invoke-static {v6, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v3

    .line 612
    iget v2, v2, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    .line 613
    .line 614
    const/4 v4, 0x4

    .line 615
    if-gt v2, v4, :cond_e

    .line 616
    .line 617
    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 618
    .line 619
    .line 620
    :cond_e
    throw v0

    .line 621
    :catchall_1
    sget-object v0, Landroidx/work/impl/WorkerWrapperKt;->TAG:Ljava/lang/String;

    .line 622
    .line 623
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 624
    .line 625
    .line 626
    move-result-object v1

    .line 627
    new-instance v2, Ljava/lang/StringBuilder;

    .line 628
    .line 629
    const-string v3, "Could not create Worker "

    .line 630
    .line 631
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v2

    .line 641
    invoke-virtual {v1, v0, v2}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    new-instance v0, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;

    .line 645
    .line 646
    invoke-direct {v0}, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;-><init>()V

    .line 647
    .line 648
    .line 649
    :goto_c
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
    invoke-virtual {v0, v3, v4, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setLastEnqueueTime(JLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 23
    .line 24
    iget p0, p0, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverrideGeneration:I

    .line 25
    .line 26
    invoke-virtual {v0, v2, p0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->resetWorkSpecNextScheduleTimeOverride(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    const-wide/16 v3, -0x1

    .line 30
    .line 31
    invoke-virtual {v0, v3, v4, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->markWorkSpecScheduled(JLjava/lang/String;)V

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
    invoke-virtual {v2, v0, v1, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setLastEnqueueTime(JLjava/lang/String;)V

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
    new-instance v1, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;

    .line 25
    .line 26
    const/16 v4, 0x12

    .line 27
    .line 28
    invoke-direct {v1, v3, v4}, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;I)V

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
    invoke-virtual {v2, v3, p0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->resetWorkSpecNextScheduleTimeOverride(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    new-instance p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;

    .line 50
    .line 51
    const/16 v1, 0x13

    .line 52
    .line 53
    invoke-direct {p0, v3, v1}, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;I)V

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
    invoke-virtual {v2, v0, v1, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl;->markWorkSpecScheduled(JLjava/lang/String;)V

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
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

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
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

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
    invoke-virtual {v3, v0, p0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->resetWorkSpecNextScheduleTimeOverride(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    iget-object p0, v3, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 66
    .line 67
    new-instance v1, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 68
    .line 69
    const/16 v2, 0x8

    .line 70
    .line 71
    invoke-direct {v1, v2, p1, v0}, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    const/4 p1, 0x0

    .line 75
    const/4 v0, 0x1

    .line 76
    invoke-static {p0, p1, v0, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    return-void
.end method
