.class public final Landroidx/work/impl/WorkerWrapper;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final appContext:Landroid/content/Context;

.field public final configuration:Landroidx/work/Configuration;

.field public final dependencyDao:Landroidx/work/impl/model/DependencyDao_Impl;

.field public final foregroundProcessor:Landroidx/work/impl/Processor;

.field public final tags:Ljava/util/ArrayList;

.field public final workDatabase:Landroidx/work/impl/WorkDatabase;

.field public final workDescription:Ljava/lang/String;

.field public final workSpec:Landroidx/work/impl/model/WorkSpec;

.field public final workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

.field public final workSpecId:Ljava/lang/String;

.field public final workTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

.field public final workerJob:Lkotlinx/coroutines/JobImpl;


# direct methods
.method public constructor <init>(Lcom/google/gson/GsonBuilder;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Landroidx/work/impl/model/WorkSpec;

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 9
    .line 10
    iget-object v1, p1, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

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
    iget-object v1, p1, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 23
    .line 24
    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 25
    .line 26
    iget-object v1, p1, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Landroidx/work/Configuration;

    .line 29
    .line 30
    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->configuration:Landroidx/work/Configuration;

    .line 31
    .line 32
    iget-object v1, p1, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Landroidx/work/impl/Processor;

    .line 35
    .line 36
    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->foregroundProcessor:Landroidx/work/impl/Processor;

    .line 37
    .line 38
    iget-object v1, p1, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v1, Landroidx/work/impl/WorkDatabase;

    .line 41
    .line 42
    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workDatabase:Landroidx/work/impl/WorkDatabase;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iput-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Landroidx/work/impl/model/DependencyDao_Impl;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->dependencyDao:Landroidx/work/impl/model/DependencyDao_Impl;

    .line 55
    .line 56
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    .line 57
    .line 58
    move-object v1, p1

    .line 59
    check-cast v1, Ljava/util/ArrayList;

    .line 60
    .line 61
    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->tags:Ljava/util/ArrayList;

    .line 62
    .line 63
    const-string p1, "Work [ id="

    .line 64
    .line 65
    const-string v2, ", tags={ "

    .line 66
    .line 67
    invoke-static {p1, v0, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const/4 v5, 0x0

    .line 72
    const/16 v6, 0x3e

    .line 73
    .line 74
    const-string v2, ","

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    const/4 v4, 0x0

    .line 78
    invoke-static/range {v1 .. v6}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v1, " } ]"

    .line 83
    .line 84
    invoke-static {p1, v0, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper;->workDescription:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {}, Lkotlinx/coroutines/AwaitKt;->Job$default()Lkotlinx/coroutines/JobImpl;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper;->workerJob:Lkotlinx/coroutines/JobImpl;

    .line 95
    .line 96
    return-void
.end method


# virtual methods
.method public final reschedule(I)V
    .locals 5

    .line 1
    sget-object v0, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v1, v0, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    invoke-virtual {v1, v2, v3, v4}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setLastEnqueueTime(Ljava/lang/String;J)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 18
    .line 19
    iget p0, p0, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverrideGeneration:I

    .line 20
    .line 21
    invoke-virtual {v1, p0, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->resetWorkSpecNextScheduleTimeOverride(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-wide/16 v3, -0x1

    .line 25
    .line 26
    invoke-virtual {v1, v2, v3, v4}, Landroidx/work/impl/model/WorkSpecDao_Impl;->markWorkSpecScheduled(Ljava/lang/String;J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setStopReason(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final resetPeriodic()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v2, v3, v0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setLastEnqueueTime(Ljava/lang/String;J)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    .line 13
    .line 14
    invoke-virtual {v2, v0, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v2, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 18
    .line 19
    new-instance v1, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    const/16 v4, 0x11

    .line 22
    .line 23
    invoke-direct {v1, v4, v3}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x1

    .line 28
    invoke-static {v0, v4, v5, v1}, Lkotlin/ExceptionsKt;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/Number;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 38
    .line 39
    iget p0, p0, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverrideGeneration:I

    .line 40
    .line 41
    invoke-virtual {v2, p0, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl;->resetWorkSpecNextScheduleTimeOverride(ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance p0, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    const/16 v1, 0x12

    .line 47
    .line 48
    invoke-direct {p0, v1, v3}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v4, v5, p0}, Lkotlin/ExceptionsKt;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    const-wide/16 v0, -0x1

    .line 55
    .line 56
    invoke-virtual {v2, v3, v0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->markWorkSpecScheduled(Ljava/lang/String;J)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final runWorker(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 6
    .line 7
    iget-object v3, v2, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, v2, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 10
    .line 11
    instance-of v5, v0, Landroidx/work/impl/WorkerWrapper$runWorker$1;

    .line 12
    .line 13
    if-eqz v5, :cond_0

    .line 14
    .line 15
    move-object v5, v0

    .line 16
    check-cast v5, Landroidx/work/impl/WorkerWrapper$runWorker$1;

    .line 17
    .line 18
    iget v6, v5, Landroidx/work/impl/WorkerWrapper$runWorker$1;->label:I

    .line 19
    .line 20
    const/high16 v7, -0x80000000

    .line 21
    .line 22
    and-int v8, v6, v7

    .line 23
    .line 24
    if-eqz v8, :cond_0

    .line 25
    .line 26
    sub-int/2addr v6, v7

    .line 27
    iput v6, v5, Landroidx/work/impl/WorkerWrapper$runWorker$1;->label:I

    .line 28
    .line 29
    :goto_0
    move-object v6, v5

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    new-instance v5, Landroidx/work/impl/WorkerWrapper$runWorker$1;

    .line 32
    .line 33
    invoke-direct {v5, v1, v0}, Landroidx/work/impl/WorkerWrapper$runWorker$1;-><init>(Landroidx/work/impl/WorkerWrapper;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :goto_1
    iget-object v0, v6, Landroidx/work/impl/WorkerWrapper$runWorker$1;->result:Ljava/lang/Object;

    .line 38
    .line 39
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 40
    .line 41
    iget v5, v6, Landroidx/work/impl/WorkerWrapper$runWorker$1;->label:I

    .line 42
    .line 43
    iget-object v8, v1, Landroidx/work/impl/WorkerWrapper;->workDescription:Ljava/lang/String;

    .line 44
    .line 45
    const/4 v9, 0x1

    .line 46
    if-eqz v5, :cond_2

    .line 47
    .line 48
    if-ne v5, v9, :cond_1

    .line 49
    .line 50
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    goto/16 :goto_a

    .line 54
    .line 55
    :catchall_0
    move-exception v0

    .line 56
    goto/16 :goto_b

    .line 57
    .line 58
    :catch_0
    move-exception v0

    .line 59
    goto/16 :goto_c

    .line 60
    .line 61
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 62
    .line 63
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    return-object v0

    .line 68
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lkotlin/TuplesKt;->isEnabled()Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    iget-object v10, v2, Landroidx/work/impl/model/WorkSpec;->traceTag:Ljava/lang/String;

    .line 76
    .line 77
    const/4 v12, 0x0

    .line 78
    if-eqz v5, :cond_5

    .line 79
    .line 80
    if-eqz v10, :cond_5

    .line 81
    .line 82
    invoke-virtual {v2}, Landroidx/work/impl/model/WorkSpec;->hashCode()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 87
    .line 88
    const/16 v14, 0x1d

    .line 89
    .line 90
    if-lt v13, v14, :cond_3

    .line 91
    .line 92
    invoke-static {v10}, Lkotlin/TuplesKt;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v13

    .line 96
    invoke-static {v13, v0}, Landroidx/tracing/TraceApi29Impl;->beginAsyncSection(Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_3
    invoke-static {v10}, Lkotlin/TuplesKt;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v13

    .line 104
    const-string v14, "asyncTraceBegin"

    .line 105
    .line 106
    :try_start_1
    sget-object v15, Lkotlin/TuplesKt;->sAsyncTraceBeginMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 107
    .line 108
    const/16 v16, 0x2

    .line 109
    .line 110
    move/from16 p1, v9

    .line 111
    .line 112
    const/4 v9, 0x3

    .line 113
    if-nez v15, :cond_4

    .line 114
    .line 115
    :try_start_2
    const-class v15, Landroid/os/Trace;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 116
    .line 117
    const/16 v17, 0x0

    .line 118
    .line 119
    :try_start_3
    new-array v11, v9, [Ljava/lang/Class;

    .line 120
    .line 121
    sget-object v18, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 122
    .line 123
    aput-object v18, v11, v17

    .line 124
    .line 125
    const-class v18, Ljava/lang/String;

    .line 126
    .line 127
    aput-object v18, v11, p1

    .line 128
    .line 129
    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 130
    .line 131
    aput-object v18, v11, v16

    .line 132
    .line 133
    invoke-virtual {v15, v14, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 134
    .line 135
    .line 136
    move-result-object v15

    .line 137
    sput-object v15, Lkotlin/TuplesKt;->sAsyncTraceBeginMethod:Ljava/lang/reflect/Method;

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :catch_1
    move-exception v0

    .line 141
    goto :goto_4

    .line 142
    :catch_2
    move-exception v0

    .line 143
    :goto_2
    const/16 v17, 0x0

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_4
    const/16 v17, 0x0

    .line 147
    .line 148
    :goto_3
    sget-wide v18, Lkotlin/TuplesKt;->sTraceTagApp:J

    .line 149
    .line 150
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 151
    .line 152
    .line 153
    move-result-object v11

    .line 154
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    new-array v9, v9, [Ljava/lang/Object;

    .line 159
    .line 160
    aput-object v11, v9, v17

    .line 161
    .line 162
    aput-object v13, v9, p1

    .line 163
    .line 164
    aput-object v0, v9, v16

    .line 165
    .line 166
    invoke-virtual {v15, v12, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 167
    .line 168
    .line 169
    goto :goto_6

    .line 170
    :catch_3
    move-exception v0

    .line 171
    move/from16 p1, v9

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :goto_4
    invoke-static {v14, v0}, Lkotlin/TuplesKt;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 175
    .line 176
    .line 177
    goto :goto_6

    .line 178
    :cond_5
    :goto_5
    move/from16 p1, v9

    .line 179
    .line 180
    const/16 v17, 0x0

    .line 181
    .line 182
    :goto_6
    new-instance v0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda0;

    .line 183
    .line 184
    move/from16 v9, v17

    .line 185
    .line 186
    invoke-direct {v0, v1, v9}, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/WorkerWrapper;I)V

    .line 187
    .line 188
    .line 189
    new-instance v9, Landroidx/work/Worker$$ExternalSyntheticLambda0;

    .line 190
    .line 191
    const/4 v11, 0x5

    .line 192
    invoke-direct {v9, v11, v0}, Landroidx/work/Worker$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    iget-object v13, v1, Landroidx/work/impl/WorkerWrapper;->workDatabase:Landroidx/work/impl/WorkDatabase;

    .line 196
    .line 197
    invoke-virtual {v13, v9}, Landroidx/room/RoomDatabase;->runInTransaction(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    check-cast v0, Ljava/lang/Boolean;

    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_6

    .line 208
    .line 209
    new-instance v0, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;

    .line 210
    .line 211
    invoke-direct {v0}, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;-><init>()V

    .line 212
    .line 213
    .line 214
    return-object v0

    .line 215
    :cond_6
    invoke-virtual {v2}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    iget-object v9, v1, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 220
    .line 221
    if-eqz v0, :cond_7

    .line 222
    .line 223
    iget-object v0, v2, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 224
    .line 225
    goto/16 :goto_9

    .line 226
    .line 227
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    sget-object v0, Landroidx/work/InputMergerKt;->TAG:Ljava/lang/String;

    .line 231
    .line 232
    :try_start_4
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v0, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v0, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    check-cast v0, Landroidx/work/OverwritingInputMerger;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 248
    .line 249
    goto :goto_7

    .line 250
    :catch_4
    move-exception v0

    .line 251
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 252
    .line 253
    .line 254
    move-result-object v14

    .line 255
    sget-object v15, Landroidx/work/InputMergerKt;->TAG:Ljava/lang/String;

    .line 256
    .line 257
    const-string v12, "Trouble instantiating "

    .line 258
    .line 259
    invoke-virtual {v12, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v12

    .line 263
    invoke-virtual {v14, v15, v12, v0}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    .line 265
    .line 266
    const/4 v0, 0x0

    .line 267
    :goto_7
    if-nez v0, :cond_8

    .line 268
    .line 269
    sget-object v0, Landroidx/work/impl/WorkerWrapperKt;->TAG:Ljava/lang/String;

    .line 270
    .line 271
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    const-string v3, "Could not create Input Merger "

    .line 278
    .line 279
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    invoke-virtual {v1, v0, v2}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    new-instance v0, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;

    .line 293
    .line 294
    invoke-direct {v0}, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;-><init>()V

    .line 295
    .line 296
    .line 297
    return-object v0

    .line 298
    :cond_8
    iget-object v0, v2, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 299
    .line 300
    invoke-static {v0}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    iget-object v4, v1, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 305
    .line 306
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    iget-object v4, v4, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 313
    .line 314
    new-instance v12, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;

    .line 315
    .line 316
    const/16 v14, 0x13

    .line 317
    .line 318
    invoke-direct {v12, v14, v9}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;)V

    .line 319
    .line 320
    .line 321
    move/from16 v15, p1

    .line 322
    .line 323
    const/4 v14, 0x0

    .line 324
    invoke-static {v4, v15, v14, v12}, Lkotlin/ExceptionsKt;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    check-cast v4, Ljava/util/List;

    .line 329
    .line 330
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    new-instance v4, Landroidx/work/Data$Builder;

    .line 335
    .line 336
    invoke-direct {v4}, Landroidx/work/Data$Builder;-><init>()V

    .line 337
    .line 338
    .line 339
    new-instance v12, Ljava/util/LinkedHashMap;

    .line 340
    .line 341
    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 349
    .line 350
    .line 351
    move-result v14

    .line 352
    if-eqz v14, :cond_9

    .line 353
    .line 354
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v14

    .line 358
    check-cast v14, Landroidx/work/Data;

    .line 359
    .line 360
    iget-object v14, v14, Landroidx/work/Data;->values:Ljava/util/HashMap;

    .line 361
    .line 362
    invoke-static {v14}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 363
    .line 364
    .line 365
    move-result-object v14

    .line 366
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    .line 368
    .line 369
    invoke-interface {v12, v14}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 370
    .line 371
    .line 372
    goto :goto_8

    .line 373
    :cond_9
    invoke-virtual {v4, v12}, Landroidx/work/Data$Builder;->putAll(Ljava/util/HashMap;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v4}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    :goto_9
    new-instance v4, Landroidx/work/WorkerParameters;

    .line 381
    .line 382
    invoke-static {v9}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 383
    .line 384
    .line 385
    move-result-object v9

    .line 386
    iget v2, v2, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 387
    .line 388
    iget-object v12, v1, Landroidx/work/impl/WorkerWrapper;->configuration:Landroidx/work/Configuration;

    .line 389
    .line 390
    iget-object v14, v12, Landroidx/work/Configuration;->executor:Ljava/util/concurrent/ExecutorService;

    .line 391
    .line 392
    iget-object v12, v12, Landroidx/work/Configuration;->workerCoroutineContext:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 393
    .line 394
    new-instance v15, Landroidx/work/impl/utils/WorkProgressUpdater;

    .line 395
    .line 396
    new-instance v15, Landroidx/work/impl/utils/WorkForegroundUpdater;

    .line 397
    .line 398
    iget-object v11, v1, Landroidx/work/impl/WorkerWrapper;->foregroundProcessor:Landroidx/work/impl/Processor;

    .line 399
    .line 400
    move/from16 v18, v5

    .line 401
    .line 402
    iget-object v5, v1, Landroidx/work/impl/WorkerWrapper;->workTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 403
    .line 404
    invoke-direct {v15, v13, v11, v5}, Landroidx/work/impl/utils/WorkForegroundUpdater;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/Processor;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V

    .line 405
    .line 406
    .line 407
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 408
    .line 409
    .line 410
    iput-object v9, v4, Landroidx/work/WorkerParameters;->mId:Ljava/util/UUID;

    .line 411
    .line 412
    iput-object v0, v4, Landroidx/work/WorkerParameters;->mInputData:Landroidx/work/Data;

    .line 413
    .line 414
    new-instance v0, Ljava/util/HashSet;

    .line 415
    .line 416
    iget-object v9, v1, Landroidx/work/impl/WorkerWrapper;->tags:Ljava/util/ArrayList;

    .line 417
    .line 418
    invoke-direct {v0, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 419
    .line 420
    .line 421
    iput v2, v4, Landroidx/work/WorkerParameters;->mRunAttemptCount:I

    .line 422
    .line 423
    iput-object v14, v4, Landroidx/work/WorkerParameters;->mBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 424
    .line 425
    iput-object v12, v4, Landroidx/work/WorkerParameters;->mWorkerContext:Lkotlin/coroutines/CoroutineContext;

    .line 426
    .line 427
    iput-object v5, v4, Landroidx/work/WorkerParameters;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 428
    .line 429
    sget-object v0, Landroidx/work/SystemClock;->INSTANCE:Landroidx/work/SystemClock;

    .line 430
    .line 431
    iput-object v0, v4, Landroidx/work/WorkerParameters;->mWorkerFactory:Landroidx/work/SystemClock;

    .line 432
    .line 433
    :try_start_5
    iget-object v2, v1, Landroidx/work/impl/WorkerWrapper;->appContext:Landroid/content/Context;

    .line 434
    .line 435
    invoke-virtual {v0, v2, v3, v4}, Landroidx/work/SystemClock;->createWorkerWithDefaultFallback(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    .line 436
    .line 437
    .line 438
    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 439
    const/4 v3, 0x1

    .line 440
    iput-boolean v3, v2, Landroidx/work/ListenableWorker;->mUsed:Z

    .line 441
    .line 442
    iget-object v0, v6, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->_context:Lkotlin/coroutines/CoroutineContext;

    .line 443
    .line 444
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    .line 446
    .line 447
    sget-object v3, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    .line 448
    .line 449
    invoke-interface {v0, v3}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 454
    .line 455
    .line 456
    move-object v9, v0

    .line 457
    check-cast v9, Lkotlinx/coroutines/Job;

    .line 458
    .line 459
    new-instance v0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;

    .line 460
    .line 461
    move-object v3, v5

    .line 462
    const/4 v5, 0x0

    .line 463
    move-object v4, v10

    .line 464
    move-object v10, v3

    .line 465
    move-object v3, v4

    .line 466
    move-object v4, v1

    .line 467
    move-object v1, v2

    .line 468
    move/from16 v2, v18

    .line 469
    .line 470
    invoke-direct/range {v0 .. v5}, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;I)V

    .line 471
    .line 472
    .line 473
    move-object v2, v1

    .line 474
    move-object v1, v4

    .line 475
    invoke-interface {v9, v0}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 476
    .line 477
    .line 478
    new-instance v0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda0;

    .line 479
    .line 480
    const/4 v3, 0x1

    .line 481
    invoke-direct {v0, v1, v3}, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/WorkerWrapper;I)V

    .line 482
    .line 483
    .line 484
    new-instance v3, Landroidx/work/Worker$$ExternalSyntheticLambda0;

    .line 485
    .line 486
    const/4 v4, 0x5

    .line 487
    invoke-direct {v3, v4, v0}, Landroidx/work/Worker$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v13, v3}, Landroidx/room/RoomDatabase;->runInTransaction(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 495
    .line 496
    .line 497
    check-cast v0, Ljava/lang/Boolean;

    .line 498
    .line 499
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 500
    .line 501
    .line 502
    move-result v0

    .line 503
    if-nez v0, :cond_a

    .line 504
    .line 505
    new-instance v0, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;

    .line 506
    .line 507
    invoke-direct {v0}, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;-><init>()V

    .line 508
    .line 509
    .line 510
    return-object v0

    .line 511
    :cond_a
    invoke-interface {v9}, Lkotlinx/coroutines/Job;->isCancelled()Z

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    if-eqz v0, :cond_b

    .line 516
    .line 517
    new-instance v0, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;

    .line 518
    .line 519
    invoke-direct {v0}, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;-><init>()V

    .line 520
    .line 521
    .line 522
    return-object v0

    .line 523
    :cond_b
    iget-object v0, v10, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mMainThreadExecutor:Lretrofit2/AndroidMainExecutor;

    .line 524
    .line 525
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 526
    .line 527
    .line 528
    invoke-static {v0}, Lkotlinx/coroutines/AwaitKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    .line 529
    .line 530
    .line 531
    move-result-object v9

    .line 532
    :try_start_6
    new-instance v0, Lcoil3/RealImageLoader$execute$2;

    .line 533
    .line 534
    const/4 v5, 0x5

    .line 535
    move-object v3, v15

    .line 536
    const/4 v4, 0x0

    .line 537
    invoke-direct/range {v0 .. v5}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 538
    .line 539
    .line 540
    const/4 v3, 0x1

    .line 541
    iput v3, v6, Landroidx/work/impl/WorkerWrapper$runWorker$1;->label:I

    .line 542
    .line 543
    invoke-static {v9, v0, v6}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    if-ne v0, v7, :cond_c

    .line 548
    .line 549
    return-object v7

    .line 550
    :cond_c
    :goto_a
    check-cast v0, Landroidx/work/ListenableWorker$Result;

    .line 551
    .line 552
    new-instance v1, Landroidx/work/impl/WorkerWrapper$Resolution$Finished;

    .line 553
    .line 554
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 555
    .line 556
    .line 557
    invoke-direct {v1, v0}, Landroidx/work/impl/WorkerWrapper$Resolution$Finished;-><init>(Landroidx/work/ListenableWorker$Result;)V
    :try_end_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 558
    .line 559
    .line 560
    return-object v1

    .line 561
    :goto_b
    sget-object v1, Landroidx/work/impl/WorkerWrapperKt;->TAG:Ljava/lang/String;

    .line 562
    .line 563
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 564
    .line 565
    .line 566
    move-result-object v2

    .line 567
    const-string v3, " failed because it threw an exception/error"

    .line 568
    .line 569
    invoke-virtual {v8, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v3

    .line 573
    invoke-virtual {v2, v1, v3, v0}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 574
    .line 575
    .line 576
    new-instance v0, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;

    .line 577
    .line 578
    invoke-direct {v0}, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;-><init>()V

    .line 579
    .line 580
    .line 581
    return-object v0

    .line 582
    :goto_c
    sget-object v1, Landroidx/work/impl/WorkerWrapperKt;->TAG:Ljava/lang/String;

    .line 583
    .line 584
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 585
    .line 586
    .line 587
    move-result-object v2

    .line 588
    const-string v3, " was cancelled"

    .line 589
    .line 590
    invoke-virtual {v8, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v3

    .line 594
    iget v2, v2, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    .line 595
    .line 596
    const/4 v4, 0x4

    .line 597
    if-gt v2, v4, :cond_d

    .line 598
    .line 599
    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 600
    .line 601
    .line 602
    :cond_d
    throw v0

    .line 603
    :catchall_1
    sget-object v0, Landroidx/work/impl/WorkerWrapperKt;->TAG:Ljava/lang/String;

    .line 604
    .line 605
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 606
    .line 607
    .line 608
    move-result-object v1

    .line 609
    new-instance v2, Ljava/lang/StringBuilder;

    .line 610
    .line 611
    const-string v4, "Could not create Worker "

    .line 612
    .line 613
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v2

    .line 623
    invoke-virtual {v1, v0, v2}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    new-instance v0, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;

    .line 627
    .line 628
    invoke-direct {v0}, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;-><init>()V

    .line 629
    .line 630
    .line 631
    return-object v0
.end method

.method public final setFailed(Landroidx/work/ListenableWorker$Result;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Landroidx/room/Room;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v3, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    sget-object v5, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    .line 30
    .line 31
    if-eq v4, v5, :cond_0

    .line 32
    .line 33
    sget-object v4, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    .line 34
    .line 35
    invoke-virtual {v3, v4, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->dependencyDao:Landroidx/work/impl/model/DependencyDao_Impl;

    .line 39
    .line 40
    invoke-virtual {v3, v2}, Landroidx/work/impl/model/DependencyDao_Impl;->getDependentWorkIds(Ljava/lang/String;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    check-cast p1, Landroidx/work/ListenableWorker$Result$Failure;

    .line 49
    .line 50
    iget-object p1, p1, Landroidx/work/ListenableWorker$Result$Failure;->mOutputData:Landroidx/work/Data;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 56
    .line 57
    iget p0, p0, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverrideGeneration:I

    .line 58
    .line 59
    invoke-virtual {v3, p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->resetWorkSpecNextScheduleTimeOverride(ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object p0, v3, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 63
    .line 64
    new-instance v1, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;

    .line 65
    .line 66
    const/4 v2, 0x4

    .line 67
    invoke-direct {v1, v2, p1, v0}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    const/4 p1, 0x0

    .line 71
    const/4 v0, 0x1

    .line 72
    invoke-static {p0, p1, v0, v1}, Lkotlin/ExceptionsKt;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    return-void
.end method
