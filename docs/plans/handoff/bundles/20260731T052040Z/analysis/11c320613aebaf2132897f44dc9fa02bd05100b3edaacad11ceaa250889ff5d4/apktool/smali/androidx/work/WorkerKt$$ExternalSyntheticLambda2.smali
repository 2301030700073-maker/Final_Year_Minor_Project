.class public final synthetic Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private final run$androidx$work$impl$Processor$$ExternalSyntheticLambda1()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/work/impl/Processor;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Landroidx/work/impl/WorkerWrapper;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object v1, v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->delegate:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    const/4 v1, 0x1

    .line 30
    :goto_0
    const-string v2, "Processor "

    .line 31
    .line 32
    iget-object v3, v0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v3

    .line 35
    :try_start_1
    iget-object v4, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 36
    .line 37
    invoke-static {v4}, Lkotlin/ranges/RangesKt;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iget-object v5, v4, Landroidx/work/impl/model/WorkGenerationalId;->workSpecId:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v5}, Landroidx/work/impl/Processor;->getWorkerWrapperUnsafe(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    if-ne v6, p0, :cond_0

    .line 48
    .line 49
    invoke-virtual {v0, v5}, Landroidx/work/impl/Processor;->cleanUpWorkerUnsafe(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_3

    .line 55
    :cond_0
    :goto_1
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    sget-object v6, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v7, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v2, " executed; reschedule = "

    .line 70
    .line 71
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {p0, v6, v2}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object p0, v0, Landroidx/work/impl/Processor;->mOuterListeners:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_1

    .line 95
    .line 96
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Landroidx/work/impl/ExecutionListener;

    .line 101
    .line 102
    invoke-interface {v0, v4, v1}, Landroidx/work/impl/ExecutionListener;->onExecuted(Landroidx/work/impl/model/WorkGenerationalId;Z)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_1
    monitor-exit v3

    .line 107
    return-void

    .line 108
    :goto_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    throw p0
.end method

.method private final run$androidx$work$impl$WorkLauncherImpl$$ExternalSyntheticLambda0()V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/grack/nanojson/JsonBuilder;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/work/impl/StartStopToken;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Landroidx/work/impl/Processor;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string v1, "Work "

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/work/impl/StartStopToken;->id:Landroidx/work/impl/model/WorkGenerationalId;

    .line 19
    .line 20
    iget-object v3, v2, Landroidx/work/impl/model/WorkGenerationalId;->workSpecId:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v4, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v5, v0, Landroidx/work/impl/Processor;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 28
    .line 29
    new-instance v6, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    invoke-direct {v6, v7, v0, v4, v3}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    new-instance v8, Landroidx/work/Worker$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    const/16 v9, 0xe

    .line 38
    .line 39
    invoke-direct {v8, v6, v9}, Landroidx/work/Worker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, v8}, Landroidx/room/RoomDatabase;->runInTransaction(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Landroidx/work/impl/model/WorkSpec;

    .line 47
    .line 48
    if-nez v5, :cond_0

    .line 49
    .line 50
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    sget-object v1, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    .line 55
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v4, "Didn\'t find WorkSpec for id "

    .line 59
    .line 60
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {p0, v1, v3}, Landroidx/work/Logger$LogcatLogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object p0, v0, Landroidx/work/impl/Processor;->mWorkTaskExecutor:Lokhttp3/Dispatcher;

    .line 74
    .line 75
    iget-object p0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p0, Landroidx/core/os/ExecutorCompat$HandlerExecutor;

    .line 78
    .line 79
    new-instance v1, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 80
    .line 81
    invoke-direct {v1, v0, v2, v7}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v1}, Landroidx/core/os/ExecutorCompat$HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_0
    iget-object v6, v0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    .line 89
    .line 90
    monitor-enter v6

    .line 91
    :try_start_0
    invoke-virtual {v0, v3}, Landroidx/work/impl/Processor;->isEnqueued(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    if-eqz v8, :cond_2

    .line 96
    .line 97
    iget-object v4, v0, Landroidx/work/impl/Processor;->mWorkRuns:Ljava/util/HashMap;

    .line 98
    .line 99
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    check-cast v3, Ljava/util/Set;

    .line 104
    .line 105
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    check-cast v4, Landroidx/work/impl/StartStopToken;

    .line 114
    .line 115
    iget-object v4, v4, Landroidx/work/impl/StartStopToken;->id:Landroidx/work/impl/model/WorkGenerationalId;

    .line 116
    .line 117
    iget v4, v4, Landroidx/work/impl/model/WorkGenerationalId;->generation:I

    .line 118
    .line 119
    iget v5, v2, Landroidx/work/impl/model/WorkGenerationalId;->generation:I

    .line 120
    .line 121
    if-ne v4, v5, :cond_1

    .line 122
    .line 123
    invoke-interface {v3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    sget-object v0, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    .line 131
    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v1, " is already enqueued for processing"

    .line 141
    .line 142
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {p0, v0, v1}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :catchall_0
    move-exception p0

    .line 154
    goto/16 :goto_1

    .line 155
    .line 156
    :cond_1
    iget-object p0, v0, Landroidx/work/impl/Processor;->mWorkTaskExecutor:Lokhttp3/Dispatcher;

    .line 157
    .line 158
    iget-object p0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast p0, Landroidx/core/os/ExecutorCompat$HandlerExecutor;

    .line 161
    .line 162
    new-instance v1, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 163
    .line 164
    invoke-direct {v1, v0, v2, v7}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, v1}, Landroidx/core/os/ExecutorCompat$HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 168
    .line 169
    .line 170
    :goto_0
    monitor-exit v6

    .line 171
    return-void

    .line 172
    :cond_2
    iget v1, v5, Landroidx/work/impl/model/WorkSpec;->generation:I

    .line 173
    .line 174
    iget v8, v2, Landroidx/work/impl/model/WorkGenerationalId;->generation:I

    .line 175
    .line 176
    if-eq v1, v8, :cond_3

    .line 177
    .line 178
    iget-object p0, v0, Landroidx/work/impl/Processor;->mWorkTaskExecutor:Lokhttp3/Dispatcher;

    .line 179
    .line 180
    iget-object p0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast p0, Landroidx/core/os/ExecutorCompat$HandlerExecutor;

    .line 183
    .line 184
    new-instance v1, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 185
    .line 186
    invoke-direct {v1, v0, v2, v7}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v1}, Landroidx/core/os/ExecutorCompat$HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 190
    .line 191
    .line 192
    monitor-exit v6

    .line 193
    return-void

    .line 194
    :cond_3
    new-instance v1, Lorg/koin/core/Koin;

    .line 195
    .line 196
    iget-object v7, v0, Landroidx/work/impl/Processor;->mAppContext:Landroid/content/Context;

    .line 197
    .line 198
    iget-object v8, v0, Landroidx/work/impl/Processor;->mConfiguration:Landroidx/work/Configuration;

    .line 199
    .line 200
    iget-object v9, v0, Landroidx/work/impl/Processor;->mWorkTaskExecutor:Lokhttp3/Dispatcher;

    .line 201
    .line 202
    iget-object v10, v0, Landroidx/work/impl/Processor;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 203
    .line 204
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 211
    .line 212
    .line 213
    iput-object v8, v1, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    .line 214
    .line 215
    iput-object v9, v1, Lorg/koin/core/Koin;->resolver:Ljava/lang/Object;

    .line 216
    .line 217
    iput-object v0, v1, Lorg/koin/core/Koin;->scopeRegistry:Ljava/lang/Object;

    .line 218
    .line 219
    iput-object v10, v1, Lorg/koin/core/Koin;->instanceRegistry:Ljava/lang/Object;

    .line 220
    .line 221
    iput-object v5, v1, Lorg/koin/core/Koin;->propertyRegistry:Ljava/lang/Object;

    .line 222
    .line 223
    iput-object v4, v1, Lorg/koin/core/Koin;->extensionManager:Ljava/lang/Object;

    .line 224
    .line 225
    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    iput-object v4, v1, Lorg/koin/core/Koin;->optionRegistry:Ljava/lang/Object;

    .line 233
    .line 234
    new-instance v4, Landroidx/work/impl/WorkerWrapper;

    .line 235
    .line 236
    invoke-direct {v4, v1}, Landroidx/work/impl/WorkerWrapper;-><init>(Lorg/koin/core/Koin;)V

    .line 237
    .line 238
    .line 239
    iget-object v1, v4, Landroidx/work/impl/WorkerWrapper;->workTaskExecutor:Lokhttp3/Dispatcher;

    .line 240
    .line 241
    iget-object v1, v1, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast v1, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 244
    .line 245
    invoke-static {}, Lkotlinx/coroutines/JobKt;->Job$default()Lkotlinx/coroutines/JobImpl;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    invoke-static {v1, v5}, Lnet/newpipe/app/AppKt;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    new-instance v5, Landroidx/work/impl/WorkerWrapper$launch$1;

    .line 257
    .line 258
    const/4 v7, 0x0

    .line 259
    invoke-direct {v5, v4, v7}, Landroidx/work/impl/WorkerWrapper$launch$1;-><init>(Landroidx/work/impl/WorkerWrapper;Lkotlin/coroutines/Continuation;)V

    .line 260
    .line 261
    .line 262
    invoke-static {v1, v5}, Lkotlin/math/MathKt;->launchFuture$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    new-instance v5, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    .line 267
    .line 268
    const/4 v7, 0x5

    .line 269
    invoke-direct {v5, v7, v0, v1, v4}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    iget-object v7, v0, Landroidx/work/impl/Processor;->mWorkTaskExecutor:Lokhttp3/Dispatcher;

    .line 273
    .line 274
    iget-object v7, v7, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast v7, Landroidx/core/os/ExecutorCompat$HandlerExecutor;

    .line 277
    .line 278
    iget-object v1, v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->delegate:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;

    .line 279
    .line 280
    invoke-virtual {v1, v5, v7}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 281
    .line 282
    .line 283
    iget-object v1, v0, Landroidx/work/impl/Processor;->mEnqueuedWorkMap:Ljava/util/HashMap;

    .line 284
    .line 285
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    new-instance v1, Ljava/util/HashSet;

    .line 289
    .line 290
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    iget-object p0, v0, Landroidx/work/impl/Processor;->mWorkRuns:Ljava/util/HashMap;

    .line 297
    .line 298
    invoke-virtual {p0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    sget-object v0, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    .line 307
    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    const-string v3, "Processor: processing "

    .line 311
    .line 312
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-virtual {p0, v0, v1}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    return-void

    .line 326
    :goto_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;

    .line 14
    .line 15
    iget-object v2, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, [Lorg/schabi/newpipe/util/text/LongPressClickableSpan;

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Landroid/widget/TextView;

    .line 22
    .line 23
    aget-object v2, v2, v4

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Lorg/schabi/newpipe/util/text/LongPressClickableSpan;->onLongClick(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    iput-boolean v3, v1, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->isLongPressed:Z

    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    iget-object v1, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 34
    .line 35
    iget-object v2, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    .line 38
    .line 39
    iget-object v0, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 42
    .line 43
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iput-object v3, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->name:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getAvatars()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-static {v3}, Lorg/schabi/newpipe/util/image/ImageStrategy;->imageListToDbUrl(Ljava/util/List;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    iput-object v3, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->avatarUrl:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getDescription()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    iput-object v3, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->description:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getSubscriberCount()J

    .line 69
    .line 70
    .line 71
    move-result-wide v3

    .line 72
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->subscriberCount:Ljava/lang/Long;

    .line 77
    .line 78
    iget-object v0, v2, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->subscriptionTable:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->update(Ljava/lang/Object;)I

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :pswitch_1
    iget-object v1, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v1, Ljava/util/List;

    .line 87
    .line 88
    iget-object v3, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v3, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    .line 91
    .line 92
    iget-object v0, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v0, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-eqz v5, :cond_4

    .line 105
    .line 106
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    add-int/lit8 v6, v4, 0x1

    .line 111
    .line 112
    if-ltz v4, :cond_3

    .line 113
    .line 114
    check-cast v5, Lkotlin/Pair;

    .line 115
    .line 116
    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    if-eqz v7, :cond_2

    .line 121
    .line 122
    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    check-cast v5, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;

    .line 130
    .line 131
    invoke-virtual {v5}, Lorg/schabi/newpipe/extractor/ListInfo;->getRelatedItems()Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    new-instance v7, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    if-eqz v8, :cond_1

    .line 152
    .line 153
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    instance-of v9, v8, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 158
    .line 159
    if-eqz v9, :cond_0

    .line 160
    .line 161
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_1
    iget-object v5, v3, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 166
    .line 167
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    check-cast v4, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 172
    .line 173
    iget-wide v8, v4, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->uid:J

    .line 174
    .line 175
    invoke-static {v5, v8, v9, v7}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->upsertAll$default(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;JLjava/util/List;)V

    .line 176
    .line 177
    .line 178
    :cond_2
    move v4, v6

    .line 179
    goto :goto_0

    .line 180
    :cond_3
    invoke-static {}, Lorg/jsoup/Jsoup;->throwIndexOverflow()V

    .line 181
    .line 182
    .line 183
    throw v2

    .line 184
    :cond_4
    return-void

    .line 185
    :pswitch_2
    iget-object v1, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast v1, Ljava/util/List;

    .line 188
    .line 189
    iget-object v5, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v5, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;

    .line 192
    .line 193
    iget-object v0, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    .line 196
    .line 197
    iget-object v6, v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->feedResultsHolder:Lokhttp3/Headers$Builder;

    .line 198
    .line 199
    iget-object v7, v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 200
    .line 201
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 206
    .line 207
    .line 208
    move-result v8

    .line 209
    if-eqz v8, :cond_e

    .line 210
    .line 211
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v8

    .line 215
    check-cast v8, Lio/reactivex/rxjava3/core/Notification;

    .line 216
    .line 217
    iget-object v9, v8, Lio/reactivex/rxjava3/core/Notification;->value:Ljava/lang/Object;

    .line 218
    .line 219
    if-eqz v9, :cond_c

    .line 220
    .line 221
    instance-of v10, v9, Lio/reactivex/rxjava3/internal/util/NotificationLite$ErrorNotification;

    .line 222
    .line 223
    if-nez v10, :cond_c

    .line 224
    .line 225
    invoke-virtual {v8}, Lio/reactivex/rxjava3/core/Notification;->getValue()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v9

    .line 229
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    check-cast v9, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;

    .line 233
    .line 234
    iget-object v10, v9, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->streams:Ljava/util/List;

    .line 235
    .line 236
    iget-wide v11, v9, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->uid:J

    .line 237
    .line 238
    iget-object v13, v9, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->errors:Ljava/util/ArrayList;

    .line 239
    .line 240
    invoke-virtual {v8}, Lio/reactivex/rxjava3/core/Notification;->getValue()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v8

    .line 244
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    check-cast v8, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;

    .line 248
    .line 249
    iget-object v14, v5, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    .line 250
    .line 251
    new-instance v15, Ljava/util/ArrayList;

    .line 252
    .line 253
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 257
    .line 258
    .line 259
    move-result-object v16

    .line 260
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 261
    .line 262
    .line 263
    move-result v17

    .line 264
    if-eqz v17, :cond_6

    .line 265
    .line 266
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    move-object/from16 v18, v2

    .line 271
    .line 272
    check-cast v18, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 273
    .line 274
    iget-object v3, v14, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 275
    .line 276
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    iget-object v3, v3, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->streamTable:Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;

    .line 283
    .line 284
    invoke-virtual/range {v18 .. v18}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    move-object/from16 p0, v1

    .line 289
    .line 290
    invoke-virtual/range {v18 .. v18}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    .line 299
    .line 300
    iget-object v3, v3, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 301
    .line 302
    move-object/from16 v19, v5

    .line 303
    .line 304
    new-instance v5, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;

    .line 305
    .line 306
    move-object/from16 v20, v14

    .line 307
    .line 308
    const/4 v14, 0x4

    .line 309
    invoke-direct {v5, v1, v4, v14}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;II)V

    .line 310
    .line 311
    .line 312
    const/4 v1, 0x1

    .line 313
    const/4 v4, 0x0

    .line 314
    invoke-static {v3, v1, v4, v5}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    check-cast v3, Ljava/lang/Boolean;

    .line 319
    .line 320
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    if-nez v1, :cond_5

    .line 325
    .line 326
    invoke-virtual/range {v18 .. v18}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    if-eqz v1, :cond_5

    .line 331
    .line 332
    invoke-virtual/range {v18 .. v18}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->offsetDateTime()Lj$/time/OffsetDateTime;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    sget-object v3, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->Companion:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$Companion;

    .line 344
    .line 345
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    sget-object v3, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->FEED_OLDEST_ALLOWED_DATE:Lj$/time/OffsetDateTime;

    .line 349
    .line 350
    invoke-virtual {v1, v3}, Lj$/time/OffsetDateTime;->isAfter(Lj$/time/OffsetDateTime;)Z

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    if-eqz v1, :cond_5

    .line 355
    .line 356
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    :cond_5
    move-object/from16 v1, p0

    .line 360
    .line 361
    move-object/from16 v5, v19

    .line 362
    .line 363
    move-object/from16 v14, v20

    .line 364
    .line 365
    const/4 v2, 0x0

    .line 366
    const/4 v3, 0x1

    .line 367
    const/4 v4, 0x0

    .line 368
    goto :goto_3

    .line 369
    :cond_6
    move-object/from16 p0, v1

    .line 370
    .line 371
    move-object/from16 v19, v5

    .line 372
    .line 373
    iput-object v15, v8, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->newStreams:Ljava/util/ArrayList;

    .line 374
    .line 375
    invoke-static {v7, v11, v12, v10}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->upsertAll$default(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;JLjava/util/List;)V

    .line 376
    .line 377
    .line 378
    iget-object v1, v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    .line 379
    .line 380
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 381
    .line 382
    .line 383
    iget-object v1, v1, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->subscriptionTable:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;

    .line 384
    .line 385
    iget-object v2, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 386
    .line 387
    new-instance v3, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;

    .line 388
    .line 389
    const/16 v4, 0x12

    .line 390
    .line 391
    invoke-direct {v3, v11, v12, v4}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;-><init>(JI)V

    .line 392
    .line 393
    .line 394
    const/4 v4, 0x1

    .line 395
    const/4 v5, 0x0

    .line 396
    invoke-static {v2, v4, v5, v3}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    check-cast v2, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 401
    .line 402
    iget-object v3, v9, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->name:Ljava/lang/String;

    .line 403
    .line 404
    iput-object v3, v2, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->name:Ljava/lang/String;

    .line 405
    .line 406
    iget-object v3, v9, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->avatarUrl:Ljava/lang/String;

    .line 407
    .line 408
    if-eqz v3, :cond_7

    .line 409
    .line 410
    iput-object v3, v2, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->avatarUrl:Ljava/lang/String;

    .line 411
    .line 412
    :cond_7
    iget-object v3, v9, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->description:Ljava/lang/String;

    .line 413
    .line 414
    if-eqz v3, :cond_8

    .line 415
    .line 416
    iput-object v3, v2, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->description:Ljava/lang/String;

    .line 417
    .line 418
    :cond_8
    iget-object v3, v9, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->subscriberCount:Ljava/lang/Long;

    .line 419
    .line 420
    if-eqz v3, :cond_9

    .line 421
    .line 422
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 423
    .line 424
    .line 425
    move-result-wide v3

    .line 426
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    iput-object v3, v2, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->subscriberCount:Ljava/lang/Long;

    .line 431
    .line 432
    :cond_9
    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->update(Ljava/lang/Object;)I

    .line 433
    .line 434
    .line 435
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    if-nez v1, :cond_b

    .line 440
    .line 441
    new-instance v1, Ljava/util/ArrayList;

    .line 442
    .line 443
    const/16 v2, 0xa

    .line 444
    .line 445
    invoke-static {v13, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 446
    .line 447
    .line 448
    move-result v2

    .line 449
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 457
    .line 458
    .line 459
    move-result v3

    .line 460
    if-eqz v3, :cond_a

    .line 461
    .line 462
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    check-cast v3, Ljava/lang/Throwable;

    .line 467
    .line 468
    new-instance v4, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$RequestException;

    .line 469
    .line 470
    iget v5, v9, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->serviceId:I

    .line 471
    .line 472
    iget-object v8, v9, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->url:Ljava/lang/String;

    .line 473
    .line 474
    new-instance v10, Ljava/lang/StringBuilder;

    .line 475
    .line 476
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    const-string v5, ":"

    .line 483
    .line 484
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v5

    .line 494
    invoke-direct {v4, v5, v3, v11, v12}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;J)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    .line 499
    .line 500
    goto :goto_4

    .line 501
    :cond_a
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 502
    .line 503
    .line 504
    iget-object v2, v6, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 505
    .line 506
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 507
    .line 508
    .line 509
    iget-object v1, v7, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedTable:Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;

    .line 510
    .line 511
    new-instance v2, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;

    .line 512
    .line 513
    const/4 v3, 0x0

    .line 514
    invoke-direct {v2, v11, v12, v3}, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;-><init>(JLj$/time/OffsetDateTime;)V

    .line 515
    .line 516
    .line 517
    iget-object v3, v1, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 518
    .line 519
    new-instance v4, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda4;

    .line 520
    .line 521
    const/4 v5, 0x0

    .line 522
    invoke-direct {v4, v1, v2, v5}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;I)V

    .line 523
    .line 524
    .line 525
    const/4 v1, 0x1

    .line 526
    invoke-static {v3, v5, v1, v4}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move v3, v1

    .line 530
    move v4, v5

    .line 531
    move-object/from16 v5, v19

    .line 532
    .line 533
    const/4 v2, 0x0

    .line 534
    move-object/from16 v1, p0

    .line 535
    .line 536
    goto/16 :goto_2

    .line 537
    .line 538
    :cond_b
    move-object/from16 v1, p0

    .line 539
    .line 540
    move-object/from16 v5, v19

    .line 541
    .line 542
    const/4 v2, 0x0

    .line 543
    const/4 v3, 0x1

    .line 544
    const/4 v4, 0x0

    .line 545
    goto/16 :goto_2

    .line 546
    .line 547
    :cond_c
    move-object/from16 p0, v1

    .line 548
    .line 549
    move-object/from16 v19, v5

    .line 550
    .line 551
    instance-of v1, v9, Lio/reactivex/rxjava3/internal/util/NotificationLite$ErrorNotification;

    .line 552
    .line 553
    if-eqz v1, :cond_b

    .line 554
    .line 555
    instance-of v1, v9, Lio/reactivex/rxjava3/internal/util/NotificationLite$ErrorNotification;

    .line 556
    .line 557
    if-eqz v1, :cond_d

    .line 558
    .line 559
    invoke-static {v9}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 560
    .line 561
    .line 562
    move-result-object v1

    .line 563
    goto :goto_5

    .line 564
    :cond_d
    const/4 v1, 0x0

    .line 565
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 569
    .line 570
    .line 571
    iget-object v2, v6, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 572
    .line 573
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    .line 575
    .line 576
    instance-of v2, v1, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$RequestException;

    .line 577
    .line 578
    if-eqz v2, :cond_b

    .line 579
    .line 580
    check-cast v1, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$RequestException;

    .line 581
    .line 582
    invoke-virtual {v1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$RequestException;->getSubscriptionId()J

    .line 583
    .line 584
    .line 585
    move-result-wide v1

    .line 586
    iget-object v3, v7, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedTable:Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;

    .line 587
    .line 588
    new-instance v4, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;

    .line 589
    .line 590
    const/4 v5, 0x0

    .line 591
    invoke-direct {v4, v1, v2, v5}, Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;-><init>(JLj$/time/OffsetDateTime;)V

    .line 592
    .line 593
    .line 594
    iget-object v1, v3, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 595
    .line 596
    new-instance v2, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda4;

    .line 597
    .line 598
    const/4 v5, 0x0

    .line 599
    invoke-direct {v2, v3, v4, v5}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lorg/schabi/newpipe/database/feed/model/FeedLastUpdatedEntity;I)V

    .line 600
    .line 601
    .line 602
    const/4 v4, 0x1

    .line 603
    invoke-static {v1, v5, v4, v2}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-object/from16 v1, p0

    .line 607
    .line 608
    move v3, v4

    .line 609
    move v4, v5

    .line 610
    move-object/from16 v5, v19

    .line 611
    .line 612
    const/4 v2, 0x0

    .line 613
    goto/16 :goto_2

    .line 614
    .line 615
    :cond_e
    return-void

    .line 616
    :pswitch_3
    iget-object v1, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 617
    .line 618
    check-cast v1, Lorg/acra/sender/LegacySenderService;

    .line 619
    .line 620
    iget-object v2, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 621
    .line 622
    check-cast v2, Lorg/acra/config/CoreConfiguration;

    .line 623
    .line 624
    iget-object v0, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 625
    .line 626
    check-cast v0, Landroid/content/Intent;

    .line 627
    .line 628
    sget v3, Lorg/acra/sender/LegacySenderService;->$r8$clinit:I

    .line 629
    .line 630
    new-instance v3, Lorg/acra/util/ProcessFinisher;

    .line 631
    .line 632
    invoke-direct {v3, v1, v2}, Lorg/acra/util/ProcessFinisher;-><init>(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)V

    .line 633
    .line 634
    .line 635
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    if-nez v0, :cond_f

    .line 640
    .line 641
    new-instance v0, Landroid/os/Bundle;

    .line 642
    .line 643
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 644
    .line 645
    .line 646
    :cond_f
    const/4 v5, 0x0

    .line 647
    invoke-virtual {v3, v5, v0}, Lorg/acra/util/ProcessFinisher;->sendReports(ZLandroid/os/Bundle;)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v1}, Landroid/app/Service;->stopSelf()V

    .line 651
    .line 652
    .line 653
    return-void

    .line 654
    :pswitch_4
    iget-object v1, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 655
    .line 656
    check-cast v1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    .line 657
    .line 658
    iget-object v2, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 659
    .line 660
    check-cast v2, Lcom/google/android/exoplayer2/Format;

    .line 661
    .line 662
    iget-object v0, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 663
    .line 664
    check-cast v0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    .line 665
    .line 666
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->$r8$lambda$mjmrnjQOitBpvLIn3h-arazn5io(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    .line 667
    .line 668
    .line 669
    return-void

    .line 670
    :pswitch_5
    iget-object v1, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 671
    .line 672
    check-cast v1, Lcom/google/common/util/concurrent/SettableFuture;

    .line 673
    .line 674
    iget-object v2, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 675
    .line 676
    check-cast v2, Ljava/lang/Runnable;

    .line 677
    .line 678
    iget-object v0, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 679
    .line 680
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/Util;->$r8$lambda$of78Sa4irjvn7z-bI_fAkx5ZFbM(Lcom/google/common/util/concurrent/SettableFuture;Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 681
    .line 682
    .line 683
    return-void

    .line 684
    :pswitch_6
    iget-object v1, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 685
    .line 686
    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 687
    .line 688
    iget-object v2, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 689
    .line 690
    check-cast v2, Lcom/google/common/util/concurrent/SettableFuture;

    .line 691
    .line 692
    iget-object v0, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 693
    .line 694
    check-cast v0, Lcom/google/common/util/concurrent/AsyncFunction;

    .line 695
    .line 696
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/Util;->$r8$lambda$r06sr3QTfbLqbUGQEibuJTpLMs4(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)V

    .line 697
    .line 698
    .line 699
    return-void

    .line 700
    :pswitch_7
    iget-object v1, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 701
    .line 702
    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 703
    .line 704
    iget-object v2, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 705
    .line 706
    check-cast v2, Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    .line 707
    .line 708
    iget-object v0, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 709
    .line 710
    check-cast v0, Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 711
    .line 712
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->$r8$lambda$U25mxDpmaVuqe0N6KWK0NDoC45A(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    .line 713
    .line 714
    .line 715
    return-void

    .line 716
    :pswitch_8
    iget-object v1, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 717
    .line 718
    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 719
    .line 720
    iget-object v2, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 721
    .line 722
    check-cast v2, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;

    .line 723
    .line 724
    iget-object v0, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 725
    .line 726
    check-cast v0, Ljava/lang/Exception;

    .line 727
    .line 728
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->$r8$lambda$J4nKdhxTenpGUcHg8IR83W358tk(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;Ljava/lang/Exception;)V

    .line 729
    .line 730
    .line 731
    return-void

    .line 732
    :pswitch_9
    iget-object v1, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 733
    .line 734
    check-cast v1, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    .line 735
    .line 736
    iget-object v2, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 737
    .line 738
    check-cast v2, Lcom/google/android/exoplayer2/Format;

    .line 739
    .line 740
    iget-object v0, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 741
    .line 742
    check-cast v0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    .line 743
    .line 744
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->$r8$lambda$Ml12m7aKwFQecAHx4WobiAEc1_8(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    .line 745
    .line 746
    .line 747
    return-void

    .line 748
    :pswitch_a
    iget-object v1, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 749
    .line 750
    check-cast v1, Landroidx/work/impl/WorkDatabase;

    .line 751
    .line 752
    iget-object v2, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 753
    .line 754
    check-cast v2, Ljava/lang/String;

    .line 755
    .line 756
    iget-object v0, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 757
    .line 758
    check-cast v0, Landroidx/work/impl/WorkManagerImpl;

    .line 759
    .line 760
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 761
    .line 762
    .line 763
    move-result-object v1

    .line 764
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 765
    .line 766
    .line 767
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 768
    .line 769
    .line 770
    iget-object v1, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 771
    .line 772
    new-instance v3, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;

    .line 773
    .line 774
    const/16 v4, 0xc

    .line 775
    .line 776
    invoke-direct {v3, v2, v4}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 777
    .line 778
    .line 779
    const/4 v4, 0x1

    .line 780
    const/4 v5, 0x0

    .line 781
    invoke-static {v1, v4, v5, v3}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 782
    .line 783
    .line 784
    move-result-object v1

    .line 785
    check-cast v1, Ljava/util/List;

    .line 786
    .line 787
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 788
    .line 789
    .line 790
    move-result-object v1

    .line 791
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 792
    .line 793
    .line 794
    move-result v2

    .line 795
    if-eqz v2, :cond_10

    .line 796
    .line 797
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 798
    .line 799
    .line 800
    move-result-object v2

    .line 801
    check-cast v2, Ljava/lang/String;

    .line 802
    .line 803
    invoke-static {v0, v2}, Landroidx/work/impl/utils/EnqueueUtilsKt;->cancel(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    goto :goto_6

    .line 807
    :cond_10
    return-void

    .line 808
    :pswitch_b
    invoke-direct {v0}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->run$androidx$work$impl$WorkLauncherImpl$$ExternalSyntheticLambda0()V

    .line 809
    .line 810
    .line 811
    return-void

    .line 812
    :pswitch_c
    invoke-direct {v0}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->run$androidx$work$impl$Processor$$ExternalSyntheticLambda1()V

    .line 813
    .line 814
    .line 815
    return-void

    .line 816
    :pswitch_d
    iget-object v1, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 817
    .line 818
    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 819
    .line 820
    iget-object v2, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 821
    .line 822
    check-cast v2, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 823
    .line 824
    iget-object v0, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 825
    .line 826
    check-cast v0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;

    .line 827
    .line 828
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 829
    .line 830
    .line 831
    move-result v1

    .line 832
    if-eqz v1, :cond_11

    .line 833
    .line 834
    goto :goto_7

    .line 835
    :cond_11
    :try_start_0
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    .line 836
    .line 837
    .line 838
    const/4 v3, 0x0

    .line 839
    invoke-virtual {v2, v3}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    .line 841
    .line 842
    goto :goto_7

    .line 843
    :catchall_0
    move-exception v0

    .line 844
    invoke-virtual {v2, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)V

    .line 845
    .line 846
    .line 847
    :goto_7
    return-void

    .line 848
    :pswitch_e
    iget-object v1, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 849
    .line 850
    check-cast v1, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    .line 851
    .line 852
    iget-object v2, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 853
    .line 854
    check-cast v2, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    .line 855
    .line 856
    iget-object v0, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 857
    .line 858
    check-cast v0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionEffect;

    .line 859
    .line 860
    iget-object v1, v1, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->fragment:Landroidx/fragment/app/Fragment;

    .line 861
    .line 862
    iget-object v2, v2, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->fragment:Landroidx/fragment/app/Fragment;

    .line 863
    .line 864
    iget-boolean v0, v0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionEffect;->isPop:Z

    .line 865
    .line 866
    sget-object v3, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionCompat21;

    .line 867
    .line 868
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 869
    .line 870
    .line 871
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 872
    .line 873
    .line 874
    if-eqz v0, :cond_12

    .line 875
    .line 876
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    .line 877
    .line 878
    .line 879
    goto :goto_8

    .line 880
    :cond_12
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    .line 881
    .line 882
    .line 883
    :goto_8
    return-void

    .line 884
    :pswitch_f
    iget-object v1, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 885
    .line 886
    check-cast v1, Landroid/view/ViewGroup;

    .line 887
    .line 888
    iget-object v2, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 889
    .line 890
    check-cast v2, Landroid/view/View;

    .line 891
    .line 892
    iget-object v0, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 893
    .line 894
    check-cast v0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationEffect;

    .line 895
    .line 896
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 897
    .line 898
    .line 899
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 900
    .line 901
    .line 902
    iget-object v1, v0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationEffect;->animationInfo:Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    .line 903
    .line 904
    iget-object v1, v1, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->operation:Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    .line 905
    .line 906
    invoke-virtual {v1, v0}, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->completeEffect(Landroidx/fragment/app/SpecialEffectsController$Effect;)V

    .line 907
    .line 908
    .line 909
    return-void

    .line 910
    :pswitch_10
    iget-object v1, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 911
    .line 912
    check-cast v1, Lorg/acra/file/ReportLocator;

    .line 913
    .line 914
    iget-object v2, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 915
    .line 916
    check-cast v2, Lkotlin/text/CharsKt;

    .line 917
    .line 918
    iget-object v0, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 919
    .line 920
    move-object v3, v0

    .line 921
    check-cast v3, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 922
    .line 923
    :try_start_1
    iget-object v0, v1, Lorg/acra/file/ReportLocator;->context:Landroid/content/Context;

    .line 924
    .line 925
    invoke-static {v0}, Landroidx/sqlite/SQLite;->create(Landroid/content/Context;)Landroidx/emoji2/text/FontRequestEmojiCompatConfig;

    .line 926
    .line 927
    .line 928
    move-result-object v0

    .line 929
    if-eqz v0, :cond_13

    .line 930
    .line 931
    iget-object v1, v0, Landroidx/room/RoomOpenDelegate;->identityHash:Ljava/lang/Object;

    .line 932
    .line 933
    check-cast v1, Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

    .line 934
    .line 935
    check-cast v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;

    .line 936
    .line 937
    iget-object v4, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mLock:Ljava/lang/Object;

    .line 938
    .line 939
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 940
    :try_start_2
    iput-object v3, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 941
    .line 942
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 943
    :try_start_3
    iget-object v0, v0, Landroidx/room/RoomOpenDelegate;->identityHash:Ljava/lang/Object;

    .line 944
    .line 945
    check-cast v0, Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

    .line 946
    .line 947
    new-instance v1, Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader$1;

    .line 948
    .line 949
    invoke-direct {v1, v2, v3}, Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader$1;-><init>(Lkotlin/text/CharsKt;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 950
    .line 951
    .line 952
    invoke-interface {v0, v1}, Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;->load(Lkotlin/text/CharsKt;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 953
    .line 954
    .line 955
    goto :goto_a

    .line 956
    :catchall_1
    move-exception v0

    .line 957
    goto :goto_9

    .line 958
    :catchall_2
    move-exception v0

    .line 959
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 960
    :try_start_5
    throw v0

    .line 961
    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    .line 962
    .line 963
    const-string v1, "EmojiCompat font provider not available on this device."

    .line 964
    .line 965
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 966
    .line 967
    .line 968
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 969
    :goto_9
    invoke-virtual {v2, v0}, Lkotlin/text/CharsKt;->onFailed(Ljava/lang/Throwable;)V

    .line 970
    .line 971
    .line 972
    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 973
    .line 974
    .line 975
    :goto_a
    return-void

    .line 976
    :pswitch_11
    iget-object v1, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 977
    .line 978
    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 979
    .line 980
    iget-object v2, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 981
    .line 982
    check-cast v2, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 983
    .line 984
    iget-object v0, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 985
    .line 986
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 987
    .line 988
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 989
    .line 990
    .line 991
    move-result v1

    .line 992
    if-eqz v1, :cond_14

    .line 993
    .line 994
    goto :goto_b

    .line 995
    :cond_14
    :try_start_6
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 996
    .line 997
    .line 998
    move-result-object v0

    .line 999
    invoke-virtual {v2, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1000
    .line 1001
    .line 1002
    goto :goto_b

    .line 1003
    :catchall_3
    move-exception v0

    .line 1004
    invoke-virtual {v2, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)V

    .line 1005
    .line 1006
    .line 1007
    :goto_b
    return-void

    .line 1008
    nop

    .line 1009
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
