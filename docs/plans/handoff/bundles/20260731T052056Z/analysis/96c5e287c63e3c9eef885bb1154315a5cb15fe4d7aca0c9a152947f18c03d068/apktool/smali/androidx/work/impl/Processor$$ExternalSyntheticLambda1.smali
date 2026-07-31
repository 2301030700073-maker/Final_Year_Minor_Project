.class public final synthetic Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private final run$androidx$emoji2$text$EmojiCompatInitializer$BackgroundDefaultLoader$$ExternalSyntheticLambda0()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/navigation/internal/NavContext;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcoil3/util/UtilsKt;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 12
    .line 13
    :try_start_0
    iget-object v0, v0, Landroidx/navigation/internal/NavContext;->context:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/UnsignedKt;->create(Landroid/content/Context;)Landroidx/emoji2/text/FontRequestEmojiCompatConfig;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v2, v0, Landroidx/room/RoomOpenDelegate;->identityHash:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

    .line 24
    .line 25
    check-cast v2, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;

    .line 26
    .line 27
    iget-object v3, v2, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :try_start_1
    iput-object p0, v2, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 31
    .line 32
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    :try_start_2
    iget-object v0, v0, Landroidx/room/RoomOpenDelegate;->identityHash:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

    .line 36
    .line 37
    new-instance v2, Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader$1;

    .line 38
    .line 39
    invoke-direct {v2, v1, p0}, Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader$1;-><init>(Lcoil3/util/UtilsKt;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v2}, Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;->load(Lcoil3/util/UtilsKt;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    goto :goto_0

    .line 48
    :catchall_1
    move-exception v0

    .line 49
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 50
    :try_start_4
    throw v0

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 52
    .line 53
    const-string v2, "EmojiCompat font provider not available on this device."

    .line 54
    .line 55
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 59
    :goto_0
    invoke-virtual {v1, v0}, Lcoil3/util/UtilsKt;->onFailed(Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method private final run$androidx$work$impl$WorkLauncherImpl$$ExternalSyntheticLambda0()V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcoil3/svg/internal/AndroidSvg;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/work/impl/StartStopToken;

    .line 8
    .line 9
    iget-object v0, v0, Lcoil3/svg/internal/AndroidSvg;->svg:Ljava/lang/Object;

    .line 10
    .line 11
    move-object v5, v0

    .line 12
    check-cast v5, Landroidx/work/impl/Processor;

    .line 13
    .line 14
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string v0, "Work "

    .line 18
    .line 19
    iget-object v9, p0, Landroidx/work/impl/StartStopToken;->id:Landroidx/work/impl/model/WorkGenerationalId;

    .line 20
    .line 21
    iget-object v10, v9, Landroidx/work/impl/model/WorkGenerationalId;->workSpecId:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v8, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object v1, v5, Landroidx/work/impl/Processor;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 29
    .line 30
    new-instance v2, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    invoke-direct {v2, v5, v8, v10}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/Processor;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v3, Landroidx/work/Worker$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    const/4 v4, 0x5

    .line 38
    invoke-direct {v3, v4, v2}, Landroidx/work/Worker$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v3}, Landroidx/room/RoomDatabase;->runInTransaction(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    move-object v7, v1

    .line 46
    check-cast v7, Landroidx/work/impl/model/WorkSpec;

    .line 47
    .line 48
    const/4 v11, 0x0

    .line 49
    if-nez v7, :cond_0

    .line 50
    .line 51
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    sget-object v0, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    .line 56
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v2, "Didn\'t find WorkSpec for id "

    .line 60
    .line 61
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p0, v0, v1}, Landroidx/work/Logger$LogcatLogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object p0, v5, Landroidx/work/impl/Processor;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 75
    .line 76
    iget-object p0, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mMainThreadExecutor:Lretrofit2/AndroidMainExecutor;

    .line 77
    .line 78
    new-instance v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 79
    .line 80
    invoke-direct {v0, v11, v5, v9}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v0}, Lretrofit2/AndroidMainExecutor;->execute(Ljava/lang/Runnable;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_0
    iget-object v12, v5, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    .line 88
    .line 89
    monitor-enter v12

    .line 90
    :try_start_0
    invoke-virtual {v5, v10}, Landroidx/work/impl/Processor;->isEnqueued(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_2

    .line 95
    .line 96
    iget-object v1, v5, Landroidx/work/impl/Processor;->mWorkRuns:Ljava/util/HashMap;

    .line 97
    .line 98
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Ljava/util/Set;

    .line 103
    .line 104
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Landroidx/work/impl/StartStopToken;

    .line 113
    .line 114
    iget-object v2, v2, Landroidx/work/impl/StartStopToken;->id:Landroidx/work/impl/model/WorkGenerationalId;

    .line 115
    .line 116
    iget v2, v2, Landroidx/work/impl/model/WorkGenerationalId;->generation:I

    .line 117
    .line 118
    iget v3, v9, Landroidx/work/impl/model/WorkGenerationalId;->generation:I

    .line 119
    .line 120
    if-ne v2, v3, :cond_1

    .line 121
    .line 122
    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    sget-object v1, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    .line 130
    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v0, " is already enqueued for processing"

    .line 140
    .line 141
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {p0, v1, v0}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    .line 153
    move-object p0, v0

    .line 154
    goto/16 :goto_1

    .line 155
    .line 156
    :cond_1
    iget-object p0, v5, Landroidx/work/impl/Processor;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 157
    .line 158
    iget-object p0, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mMainThreadExecutor:Lretrofit2/AndroidMainExecutor;

    .line 159
    .line 160
    new-instance v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 161
    .line 162
    invoke-direct {v0, v11, v5, v9}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v0}, Lretrofit2/AndroidMainExecutor;->execute(Ljava/lang/Runnable;)V

    .line 166
    .line 167
    .line 168
    :goto_0
    monitor-exit v12

    .line 169
    return-void

    .line 170
    :cond_2
    iget v0, v7, Landroidx/work/impl/model/WorkSpec;->generation:I

    .line 171
    .line 172
    iget v1, v9, Landroidx/work/impl/model/WorkGenerationalId;->generation:I

    .line 173
    .line 174
    if-eq v0, v1, :cond_3

    .line 175
    .line 176
    iget-object p0, v5, Landroidx/work/impl/Processor;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 177
    .line 178
    iget-object p0, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mMainThreadExecutor:Lretrofit2/AndroidMainExecutor;

    .line 179
    .line 180
    new-instance v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 181
    .line 182
    invoke-direct {v0, v11, v5, v9}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, v0}, Lretrofit2/AndroidMainExecutor;->execute(Ljava/lang/Runnable;)V

    .line 186
    .line 187
    .line 188
    monitor-exit v12

    .line 189
    return-void

    .line 190
    :cond_3
    new-instance v1, Lcom/google/gson/GsonBuilder;

    .line 191
    .line 192
    iget-object v2, v5, Landroidx/work/impl/Processor;->mAppContext:Landroid/content/Context;

    .line 193
    .line 194
    iget-object v3, v5, Landroidx/work/impl/Processor;->mConfiguration:Landroidx/work/Configuration;

    .line 195
    .line 196
    iget-object v4, v5, Landroidx/work/impl/Processor;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 197
    .line 198
    iget-object v6, v5, Landroidx/work/impl/Processor;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 199
    .line 200
    invoke-direct/range {v1 .. v8}, Lcom/google/gson/GsonBuilder;-><init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;Landroidx/work/impl/Processor;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/WorkSpec;Ljava/util/ArrayList;)V

    .line 201
    .line 202
    .line 203
    new-instance v0, Landroidx/work/impl/WorkerWrapper;

    .line 204
    .line 205
    invoke-direct {v0, v1}, Landroidx/work/impl/WorkerWrapper;-><init>(Lcom/google/gson/GsonBuilder;)V

    .line 206
    .line 207
    .line 208
    iget-object v1, v0, Landroidx/work/impl/WorkerWrapper;->workTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 209
    .line 210
    iget-object v1, v1, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mTaskDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 211
    .line 212
    invoke-static {}, Lkotlinx/coroutines/AwaitKt;->Job$default()Lkotlinx/coroutines/JobImpl;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    invoke-static {v1, v2}, Landroidx/work/OperationKt;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    new-instance v2, Landroidx/work/impl/WorkerWrapper$launch$1;

    .line 224
    .line 225
    const/4 v3, 0x0

    .line 226
    invoke-direct {v2, v0, v3, v11}, Landroidx/work/impl/WorkerWrapper$launch$1;-><init>(Landroidx/work/impl/WorkerWrapper;Lkotlin/coroutines/Continuation;I)V

    .line 227
    .line 228
    .line 229
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/DpKt;->launchFuture$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    new-instance v2, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    .line 234
    .line 235
    invoke-direct {v2, v5, v1, v0, v11}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 236
    .line 237
    .line 238
    iget-object v3, v5, Landroidx/work/impl/Processor;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 239
    .line 240
    iget-object v3, v3, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mMainThreadExecutor:Lretrofit2/AndroidMainExecutor;

    .line 241
    .line 242
    iget-object v1, v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->delegate:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;

    .line 243
    .line 244
    invoke-virtual {v1, v2, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 245
    .line 246
    .line 247
    iget-object v1, v5, Landroidx/work/impl/Processor;->mEnqueuedWorkMap:Ljava/util/HashMap;

    .line 248
    .line 249
    invoke-virtual {v1, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    new-instance v0, Ljava/util/HashSet;

    .line 253
    .line 254
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    iget-object p0, v5, Landroidx/work/impl/Processor;->mWorkRuns:Ljava/util/HashMap;

    .line 261
    .line 262
    invoke-virtual {p0, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    sget-object v0, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    .line 271
    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    const-string v2, "Processor: processing "

    .line 275
    .line 276
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-virtual {p0, v0, v1}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    return-void

    .line 290
    :goto_1
    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v6, 0x2

    .line 9
    const/4 v7, 0x0

    .line 10
    const/4 v8, 0x1

    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Lretrofit2/OkHttpCall$1;

    .line 17
    .line 18
    iget-object v2, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Lretrofit2/Callback;

    .line 21
    .line 22
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Ljava/lang/Throwable;

    .line 25
    .line 26
    iget-object v1, v1, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;

    .line 29
    .line 30
    invoke-interface {v2, v1, v0}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_0
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Lretrofit2/OkHttpCall$1;

    .line 37
    .line 38
    iget-object v2, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v2, Lretrofit2/Callback;

    .line 41
    .line 42
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lretrofit2/Response;

    .line 45
    .line 46
    iget-object v1, v1, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;

    .line 49
    .line 50
    iget-object v3, v1, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;->delegate:Lretrofit2/Call;

    .line 51
    .line 52
    invoke-interface {v3}, Lretrofit2/Call;->isCanceled()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_0

    .line 57
    .line 58
    new-instance v0, Ljava/io/IOException;

    .line 59
    .line 60
    const-string v3, "Canceled"

    .line 61
    .line 62
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v2, v1, v0}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-interface {v2, v1, v0}, Lretrofit2/Callback;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void

    .line 73
    :pswitch_1
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v1, Lorg/wikipedia/page/references/ReferenceDialog;

    .line 76
    .line 77
    iget-object v2, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v2, Lorg/wikipedia/page/references/PageReferences$Reference;

    .line 80
    .line 81
    iget-object v2, v2, Lorg/wikipedia/page/references/PageReferences$Reference;->html:Ljava/lang/String;

    .line 82
    .line 83
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v0, Lorg/wikipedia/page/references/ReferenceDialog$ViewHolder;

    .line 86
    .line 87
    iget-object v0, v0, Lorg/wikipedia/page/references/ReferenceDialog$ViewHolder;->binding:Lokio/internal/DefaultSocket;

    .line 88
    .line 89
    const-string v3, ""

    .line 90
    .line 91
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_5

    .line 96
    .line 97
    sget-object v1, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 98
    .line 99
    invoke-static {v2}, Lorg/wikipedia/util/StringUtil;->removeStyleTags(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    const-string v4, "<cite.*?>"

    .line 104
    .line 105
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    const-string v4, "</cite>"

    .line 124
    .line 125
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    const/16 v5, 0x8

    .line 152
    .line 153
    if-nez v4, :cond_4

    .line 154
    .line 155
    invoke-static {v2}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    const-string v2, "a[href]"

    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    invoke-static {v2, v1}, Lokhttp3/Cache$Companion;->select(Ljava/lang/String;Lorg/jsoup/nodes/Document;)Lorg/jsoup/select/Elements;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    new-instance v2, Ljava/util/ArrayList;

    .line 172
    .line 173
    const/16 v4, 0xa

    .line 174
    .line 175
    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-eqz v4, :cond_1

    .line 191
    .line 192
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    check-cast v4, Lorg/jsoup/nodes/Element;

    .line 197
    .line 198
    const-string v6, "href"

    .line 199
    .line 200
    invoke-virtual {v4, v6}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    move v4, v7

    .line 213
    :goto_2
    if-ge v4, v1, :cond_2

    .line 214
    .line 215
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    add-int/lit8 v4, v4, 0x1

    .line 220
    .line 221
    new-instance v8, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    const-string v3, "<a href=\'"

    .line 227
    .line 228
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v3, "\'>["

    .line 235
    .line 236
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v3, "]</a>"

    .line 243
    .line 244
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    goto :goto_2

    .line 252
    :cond_2
    iget-object v1, v0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v1, Lorg/wikipedia/views/AppTextView;

    .line 255
    .line 256
    sget-object v2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 257
    .line 258
    invoke-static {v3}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    .line 264
    .line 265
    iget-object v0, v0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 268
    .line 269
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    if-lez v1, :cond_3

    .line 274
    .line 275
    goto :goto_3

    .line 276
    :cond_3
    move v7, v5

    .line 277
    :goto_3
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 278
    .line 279
    .line 280
    goto :goto_4

    .line 281
    :cond_4
    iget-object v2, v0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 282
    .line 283
    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    .line 284
    .line 285
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 286
    .line 287
    .line 288
    iget-object v0, v0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 289
    .line 290
    check-cast v0, Lorg/wikipedia/views/AppTextView;

    .line 291
    .line 292
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    .line 294
    .line 295
    :cond_5
    :goto_4
    return-void

    .line 296
    :pswitch_2
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast v1, Lorg/wikipedia/page/PageFragment;

    .line 299
    .line 300
    iget-object v2, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 301
    .line 302
    move-object v5, v2

    .line 303
    check-cast v5, Ljava/lang/String;

    .line 304
    .line 305
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 306
    .line 307
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 308
    .line 309
    sget v2, Lorg/wikipedia/page/PageFragment;->REFRESH_SPINNER_ADDITIONAL_OFFSET:I

    .line 310
    .line 311
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    if-nez v2, :cond_6

    .line 316
    .line 317
    goto :goto_5

    .line 318
    :cond_6
    iget-object v2, v1, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 319
    .line 320
    iget-object v2, v2, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 321
    .line 322
    move-object v4, v2

    .line 323
    check-cast v4, Lorg/wikipedia/page/PageTitle;

    .line 324
    .line 325
    if-eqz v4, :cond_7

    .line 326
    .line 327
    invoke-virtual {v1}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    if-eqz v2, :cond_7

    .line 332
    .line 333
    iget-object v6, v4, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 334
    .line 335
    iget-wide v7, v1, Lorg/wikipedia/page/PageFragment;->revision:J

    .line 336
    .line 337
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 338
    .line 339
    move-object v10, v0

    .line 340
    check-cast v10, Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    .line 341
    .line 342
    move-object v3, v2

    .line 343
    check-cast v3, Lorg/wikipedia/page/PageActivity;

    .line 344
    .line 345
    const/4 v9, 0x0

    .line 346
    invoke-virtual/range {v3 .. v10}, Lorg/wikipedia/page/PageActivity;->onPageRequestGallery(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;JZLandroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 347
    .line 348
    .line 349
    :cond_7
    :goto_5
    return-void

    .line 350
    :pswitch_3
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 351
    .line 352
    check-cast v1, Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 353
    .line 354
    iget-object v2, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 355
    .line 356
    check-cast v2, Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;

    .line 357
    .line 358
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 359
    .line 360
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 361
    .line 362
    sget v3, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 363
    .line 364
    iget-object v2, v2, Lorg/wikipedia/page/LinkHandler;->context:Landroid/content/Context;

    .line 365
    .line 366
    new-instance v3, Lorg/wikipedia/history/HistoryEntry;

    .line 367
    .line 368
    invoke-direct {v3, v6, v0}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 369
    .line 370
    .line 371
    invoke-static {v2, v3, v0, v8}, Lorg/wikipedia/login/LoginClient;->newIntentForCurrentTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;Z)Landroid/content/Intent;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    invoke-virtual {v1, v0, v5}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 376
    .line 377
    .line 378
    return-void

    .line 379
    :pswitch_4
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 380
    .line 381
    check-cast v1, Lcom/skydoves/balloon/Balloon;

    .line 382
    .line 383
    iget-object v9, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 384
    .line 385
    check-cast v9, Landroid/view/View;

    .line 386
    .line 387
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 388
    .line 389
    check-cast v0, Lcom/skydoves/balloon/BalloonPlacement;

    .line 390
    .line 391
    invoke-virtual {v1, v9}, Lcom/skydoves/balloon/Balloon;->canShowBalloonWindow(Landroid/view/View;)Z

    .line 392
    .line 393
    .line 394
    move-result v10

    .line 395
    iget-object v11, v1, Lcom/skydoves/balloon/Balloon;->bodyWindow:Landroid/widget/PopupWindow;

    .line 396
    .line 397
    iget-object v12, v1, Lcom/skydoves/balloon/Balloon;->binding:Lcom/google/gson/GsonBuilder;

    .line 398
    .line 399
    iget-object v13, v1, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    .line 400
    .line 401
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 402
    .line 403
    .line 404
    move-result-object v14

    .line 405
    if-eqz v10, :cond_8

    .line 406
    .line 407
    move-object v5, v14

    .line 408
    :cond_8
    if-eqz v5, :cond_20

    .line 409
    .line 410
    iget v5, v13, Lcom/skydoves/balloon/Balloon$Builder;->supportRtlLayoutFactor:I

    .line 411
    .line 412
    iput-boolean v8, v1, Lcom/skydoves/balloon/Balloon;->isShowing:Z

    .line 413
    .line 414
    iget-object v10, v13, Lcom/skydoves/balloon/Balloon$Builder;->layout:Landroid/widget/LinearLayout;

    .line 415
    .line 416
    if-eqz v10, :cond_9

    .line 417
    .line 418
    iget-object v10, v12, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 419
    .line 420
    check-cast v10, Lcom/skydoves/balloon/radius/RadiusLayout;

    .line 421
    .line 422
    invoke-virtual {v1, v10}, Lcom/skydoves/balloon/Balloon;->traverseAndMeasureTextWidth(Landroid/view/ViewGroup;)V

    .line 423
    .line 424
    .line 425
    goto :goto_6

    .line 426
    :cond_9
    iget-object v10, v12, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 427
    .line 428
    check-cast v10, Lcom/skydoves/balloon/vectortext/VectorTextView;

    .line 429
    .line 430
    iget-object v14, v12, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 431
    .line 432
    check-cast v14, Lcom/skydoves/balloon/radius/RadiusLayout;

    .line 433
    .line 434
    invoke-virtual {v1, v10, v14}, Lcom/skydoves/balloon/Balloon;->measureTextWidth(Landroid/widget/TextView;Landroid/view/View;)V

    .line 435
    .line 436
    .line 437
    :goto_6
    new-instance v10, Landroid/graphics/Point;

    .line 438
    .line 439
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 440
    .line 441
    .line 442
    move-result-object v14

    .line 443
    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 444
    .line 445
    .line 446
    move-result-object v14

    .line 447
    iget v14, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 448
    .line 449
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 450
    .line 451
    .line 452
    move-result-object v15

    .line 453
    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 454
    .line 455
    .line 456
    move-result-object v15

    .line 457
    iget v15, v15, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 458
    .line 459
    invoke-direct {v10, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    .line 460
    .line 461
    .line 462
    iget v10, v10, Landroid/graphics/Point;->x:I

    .line 463
    .line 464
    iget v14, v13, Lcom/skydoves/balloon/Balloon$Builder;->width:I

    .line 465
    .line 466
    const/high16 v15, 0x40000000    # 2.0f

    .line 467
    .line 468
    const/high16 v3, -0x80000000

    .line 469
    .line 470
    if-eq v14, v3, :cond_b

    .line 471
    .line 472
    if-le v14, v10, :cond_a

    .line 473
    .line 474
    goto :goto_7

    .line 475
    :cond_a
    move v10, v14

    .line 476
    :goto_7
    invoke-static {v10, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 477
    .line 478
    .line 479
    move-result v10

    .line 480
    goto :goto_9

    .line 481
    :cond_b
    iget v14, v13, Lcom/skydoves/balloon/Balloon$Builder;->maxWidth:I

    .line 482
    .line 483
    if-le v14, v10, :cond_c

    .line 484
    .line 485
    goto :goto_8

    .line 486
    :cond_c
    move v10, v14

    .line 487
    :goto_8
    invoke-static {v10, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 488
    .line 489
    .line 490
    move-result v10

    .line 491
    :goto_9
    new-instance v14, Landroid/graphics/Point;

    .line 492
    .line 493
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 494
    .line 495
    .line 496
    move-result-object v16

    .line 497
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 498
    .line 499
    .line 500
    move-result-object v4

    .line 501
    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 502
    .line 503
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 504
    .line 505
    .line 506
    move-result-object v16

    .line 507
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 508
    .line 509
    .line 510
    move-result-object v6

    .line 511
    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 512
    .line 513
    invoke-direct {v14, v4, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 514
    .line 515
    .line 516
    iget v4, v14, Landroid/graphics/Point;->y:I

    .line 517
    .line 518
    iget v6, v13, Lcom/skydoves/balloon/Balloon$Builder;->height:I

    .line 519
    .line 520
    if-eq v6, v3, :cond_d

    .line 521
    .line 522
    invoke-static {v6, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 523
    .line 524
    .line 525
    move-result v3

    .line 526
    goto :goto_a

    .line 527
    :cond_d
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 528
    .line 529
    .line 530
    move-result v3

    .line 531
    :goto_a
    iget-object v4, v12, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 532
    .line 533
    check-cast v4, Landroid/widget/FrameLayout;

    .line 534
    .line 535
    invoke-virtual {v4, v10, v3}, Landroid/view/View;->measure(II)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v1}, Lcom/skydoves/balloon/Balloon;->getMeasuredWidth()I

    .line 539
    .line 540
    .line 541
    move-result v3

    .line 542
    invoke-virtual {v11, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v1}, Lcom/skydoves/balloon/Balloon;->getMeasuredHeight()I

    .line 546
    .line 547
    .line 548
    move-result v3

    .line 549
    invoke-virtual {v11, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 550
    .line 551
    .line 552
    iget-object v3, v12, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 553
    .line 554
    check-cast v3, Lcom/skydoves/balloon/vectortext/VectorTextView;

    .line 555
    .line 556
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 557
    .line 558
    const/4 v6, -0x1

    .line 559
    invoke-direct {v4, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 563
    .line 564
    .line 565
    iget-object v3, v12, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 566
    .line 567
    check-cast v3, Landroid/widget/ImageView;

    .line 568
    .line 569
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 570
    .line 571
    invoke-virtual {v13}, Lcom/skydoves/balloon/Balloon$Builder;->getEffectiveArrowWidth()I

    .line 572
    .line 573
    .line 574
    move-result v6

    .line 575
    invoke-virtual {v13}, Lcom/skydoves/balloon/Balloon$Builder;->getEffectiveArrowHeight()I

    .line 576
    .line 577
    .line 578
    move-result v10

    .line 579
    invoke-direct {v4, v6, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 586
    .line 587
    .line 588
    iget-object v2, v13, Lcom/skydoves/balloon/Balloon$Builder;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 589
    .line 590
    if-eqz v2, :cond_e

    .line 591
    .line 592
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 593
    .line 594
    .line 595
    :cond_e
    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 596
    .line 597
    .line 598
    iget v2, v13, Lcom/skydoves/balloon/Balloon$Builder;->backgroundColor:I

    .line 599
    .line 600
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 601
    .line 602
    .line 603
    move-result-object v2

    .line 604
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 605
    .line 606
    .line 607
    sget-object v2, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    .line 608
    .line 609
    invoke-virtual {v3, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 610
    .line 611
    .line 612
    iget-object v2, v12, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 613
    .line 614
    check-cast v2, Lcom/skydoves/balloon/radius/RadiusLayout;

    .line 615
    .line 616
    new-instance v4, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    .line 617
    .line 618
    const/4 v6, 0x6

    .line 619
    invoke-direct {v4, v1, v9, v3, v6}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v2, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 623
    .line 624
    .line 625
    invoke-virtual {v1}, Lcom/skydoves/balloon/Balloon;->initializeBalloonContent()V

    .line 626
    .line 627
    .line 628
    iget-object v2, v1, Lcom/skydoves/balloon/Balloon;->overlayWindow:Landroid/widget/PopupWindow;

    .line 629
    .line 630
    iget-object v3, v13, Lcom/skydoves/balloon/Balloon$Builder;->balloonOverlayAnimation:Lcom/skydoves/balloon/overlay/BalloonOverlayAnimation;

    .line 631
    .line 632
    sget-object v4, Lcom/skydoves/balloon/Balloon$WhenMappings;->$EnumSwitchMapping$3:[I

    .line 633
    .line 634
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 635
    .line 636
    .line 637
    move-result v3

    .line 638
    aget v3, v4, v3

    .line 639
    .line 640
    const v4, 0x7f13002a

    .line 641
    .line 642
    .line 643
    if-ne v3, v8, :cond_f

    .line 644
    .line 645
    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 646
    .line 647
    .line 648
    goto :goto_b

    .line 649
    :cond_f
    const v3, 0x7f13002c

    .line 650
    .line 651
    .line 652
    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 653
    .line 654
    .line 655
    :goto_b
    iget-object v2, v13, Lcom/skydoves/balloon/Balloon$Builder;->balloonAnimation:Lcom/skydoves/balloon/BalloonAnimation;

    .line 656
    .line 657
    sget-object v3, Lcom/skydoves/balloon/Balloon$WhenMappings;->$EnumSwitchMapping$2:[I

    .line 658
    .line 659
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 660
    .line 661
    .line 662
    move-result v2

    .line 663
    aget v2, v3, v2

    .line 664
    .line 665
    if-eq v2, v8, :cond_14

    .line 666
    .line 667
    const/4 v3, 0x2

    .line 668
    if-eq v2, v3, :cond_13

    .line 669
    .line 670
    const/4 v3, 0x3

    .line 671
    if-eq v2, v3, :cond_12

    .line 672
    .line 673
    const/4 v3, 0x4

    .line 674
    if-eq v2, v3, :cond_11

    .line 675
    .line 676
    const/4 v3, 0x5

    .line 677
    if-ne v2, v3, :cond_10

    .line 678
    .line 679
    const v2, 0x7f13002b

    .line 680
    .line 681
    .line 682
    invoke-virtual {v11, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 683
    .line 684
    .line 685
    goto :goto_c

    .line 686
    :cond_10
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 687
    .line 688
    .line 689
    goto/16 :goto_f

    .line 690
    .line 691
    :cond_11
    const v2, 0x7f13002e

    .line 692
    .line 693
    .line 694
    invoke-virtual {v11, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 695
    .line 696
    .line 697
    goto :goto_c

    .line 698
    :cond_12
    invoke-virtual {v11, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 699
    .line 700
    .line 701
    goto :goto_c

    .line 702
    :cond_13
    invoke-virtual {v11}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 703
    .line 704
    .line 705
    move-result-object v2

    .line 706
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 707
    .line 708
    .line 709
    const/4 v3, 0x4

    .line 710
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 711
    .line 712
    .line 713
    new-instance v3, Lcom/google/android/material/internal/ViewUtils$$ExternalSyntheticLambda0;

    .line 714
    .line 715
    const/4 v4, 0x2

    .line 716
    invoke-direct {v3, v2, v4}, Lcom/google/android/material/internal/ViewUtils$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;I)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 720
    .line 721
    .line 722
    const v2, 0x7f13002d

    .line 723
    .line 724
    .line 725
    invoke-virtual {v11, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 726
    .line 727
    .line 728
    goto :goto_c

    .line 729
    :cond_14
    const v2, 0x7f130029

    .line 730
    .line 731
    .line 732
    invoke-virtual {v11, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 733
    .line 734
    .line 735
    :goto_c
    iget-object v2, v12, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 736
    .line 737
    check-cast v2, Landroid/widget/FrameLayout;

    .line 738
    .line 739
    new-instance v3, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda9;

    .line 740
    .line 741
    invoke-direct {v3, v1, v7}, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda9;-><init>(Lcom/skydoves/balloon/Balloon;I)V

    .line 742
    .line 743
    .line 744
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 745
    .line 746
    .line 747
    iget-object v2, v0, Lcom/skydoves/balloon/BalloonPlacement;->type:Lcom/skydoves/balloon/PlacementType;

    .line 748
    .line 749
    iget-object v3, v0, Lcom/skydoves/balloon/BalloonPlacement;->align:Lcom/skydoves/balloon/BalloonAlign;

    .line 750
    .line 751
    iget-object v4, v0, Lcom/skydoves/balloon/BalloonPlacement;->anchor:Landroid/view/View;

    .line 752
    .line 753
    iget v0, v0, Lcom/skydoves/balloon/BalloonPlacement;->yOff:I

    .line 754
    .line 755
    sget-object v6, Lcom/skydoves/balloon/Balloon$WhenMappings;->$EnumSwitchMapping$5:[I

    .line 756
    .line 757
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 758
    .line 759
    .line 760
    move-result v2

    .line 761
    aget v2, v6, v2

    .line 762
    .line 763
    if-eq v2, v8, :cond_1f

    .line 764
    .line 765
    const/high16 v6, 0x3f000000    # 0.5f

    .line 766
    .line 767
    const/4 v7, 0x2

    .line 768
    if-eq v2, v7, :cond_1a

    .line 769
    .line 770
    const/4 v7, 0x3

    .line 771
    if-ne v2, v7, :cond_19

    .line 772
    .line 773
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 774
    .line 775
    .line 776
    move-result v2

    .line 777
    int-to-float v2, v2

    .line 778
    mul-float/2addr v2, v6

    .line 779
    invoke-static {v2}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 780
    .line 781
    .line 782
    move-result v2

    .line 783
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 784
    .line 785
    .line 786
    move-result v4

    .line 787
    int-to-float v4, v4

    .line 788
    mul-float/2addr v4, v6

    .line 789
    invoke-static {v4}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 790
    .line 791
    .line 792
    move-result v4

    .line 793
    invoke-virtual {v1}, Lcom/skydoves/balloon/Balloon;->getMeasuredWidth()I

    .line 794
    .line 795
    .line 796
    move-result v7

    .line 797
    int-to-float v7, v7

    .line 798
    mul-float/2addr v7, v6

    .line 799
    invoke-static {v7}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 800
    .line 801
    .line 802
    move-result v7

    .line 803
    invoke-virtual {v1}, Lcom/skydoves/balloon/Balloon;->getMeasuredHeight()I

    .line 804
    .line 805
    .line 806
    move-result v10

    .line 807
    int-to-float v10, v10

    .line 808
    mul-float/2addr v10, v6

    .line 809
    invoke-static {v10}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 810
    .line 811
    .line 812
    move-result v6

    .line 813
    sget-object v10, Lcom/skydoves/balloon/Balloon$WhenMappings;->$EnumSwitchMapping$6:[I

    .line 814
    .line 815
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 816
    .line 817
    .line 818
    move-result v3

    .line 819
    aget v3, v10, v3

    .line 820
    .line 821
    if-eq v3, v8, :cond_18

    .line 822
    .line 823
    const/4 v8, 0x2

    .line 824
    if-eq v3, v8, :cond_17

    .line 825
    .line 826
    const/4 v8, 0x3

    .line 827
    if-eq v3, v8, :cond_16

    .line 828
    .line 829
    const/4 v7, 0x4

    .line 830
    if-ne v3, v7, :cond_15

    .line 831
    .line 832
    mul-int/2addr v2, v5

    .line 833
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 834
    .line 835
    .line 836
    move-result-object v1

    .line 837
    neg-int v2, v6

    .line 838
    sub-int/2addr v2, v4

    .line 839
    add-int/2addr v2, v0

    .line 840
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 841
    .line 842
    .line 843
    move-result-object v0

    .line 844
    new-instance v2, Lkotlin/Pair;

    .line 845
    .line 846
    invoke-direct {v2, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 847
    .line 848
    .line 849
    goto/16 :goto_e

    .line 850
    .line 851
    :cond_15
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 852
    .line 853
    .line 854
    goto/16 :goto_f

    .line 855
    .line 856
    :cond_16
    invoke-virtual {v1}, Lcom/skydoves/balloon/Balloon;->getMeasuredWidth()I

    .line 857
    .line 858
    .line 859
    move-result v1

    .line 860
    sub-int/2addr v2, v1

    .line 861
    mul-int/2addr v2, v5

    .line 862
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 863
    .line 864
    .line 865
    move-result-object v1

    .line 866
    neg-int v2, v6

    .line 867
    sub-int/2addr v2, v4

    .line 868
    add-int/2addr v2, v0

    .line 869
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 870
    .line 871
    .line 872
    move-result-object v0

    .line 873
    new-instance v2, Lkotlin/Pair;

    .line 874
    .line 875
    invoke-direct {v2, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 876
    .line 877
    .line 878
    goto/16 :goto_e

    .line 879
    .line 880
    :cond_17
    sub-int/2addr v2, v7

    .line 881
    mul-int/2addr v2, v5

    .line 882
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 883
    .line 884
    .line 885
    move-result-object v1

    .line 886
    neg-int v2, v4

    .line 887
    add-int/2addr v2, v0

    .line 888
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 889
    .line 890
    .line 891
    move-result-object v0

    .line 892
    new-instance v2, Lkotlin/Pair;

    .line 893
    .line 894
    invoke-direct {v2, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 895
    .line 896
    .line 897
    goto/16 :goto_e

    .line 898
    .line 899
    :cond_18
    sub-int/2addr v2, v7

    .line 900
    mul-int/2addr v2, v5

    .line 901
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 902
    .line 903
    .line 904
    move-result-object v2

    .line 905
    invoke-virtual {v1}, Lcom/skydoves/balloon/Balloon;->getMeasuredHeight()I

    .line 906
    .line 907
    .line 908
    move-result v1

    .line 909
    add-int/2addr v1, v4

    .line 910
    neg-int v1, v1

    .line 911
    add-int/2addr v1, v0

    .line 912
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 913
    .line 914
    .line 915
    move-result-object v0

    .line 916
    new-instance v1, Lkotlin/Pair;

    .line 917
    .line 918
    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 919
    .line 920
    .line 921
    :goto_d
    move-object v2, v1

    .line 922
    goto/16 :goto_e

    .line 923
    .line 924
    :cond_19
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 925
    .line 926
    .line 927
    goto/16 :goto_f

    .line 928
    .line 929
    :cond_1a
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 930
    .line 931
    .line 932
    move-result v2

    .line 933
    int-to-float v2, v2

    .line 934
    mul-float/2addr v2, v6

    .line 935
    invoke-static {v2}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 936
    .line 937
    .line 938
    move-result v2

    .line 939
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 940
    .line 941
    .line 942
    move-result v7

    .line 943
    int-to-float v7, v7

    .line 944
    mul-float/2addr v7, v6

    .line 945
    invoke-static {v7}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 946
    .line 947
    .line 948
    move-result v7

    .line 949
    invoke-virtual {v1}, Lcom/skydoves/balloon/Balloon;->getMeasuredWidth()I

    .line 950
    .line 951
    .line 952
    move-result v10

    .line 953
    int-to-float v10, v10

    .line 954
    mul-float/2addr v10, v6

    .line 955
    invoke-static {v10}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 956
    .line 957
    .line 958
    move-result v10

    .line 959
    invoke-virtual {v1}, Lcom/skydoves/balloon/Balloon;->getMeasuredHeight()I

    .line 960
    .line 961
    .line 962
    move-result v12

    .line 963
    int-to-float v12, v12

    .line 964
    mul-float/2addr v12, v6

    .line 965
    invoke-static {v12}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 966
    .line 967
    .line 968
    move-result v6

    .line 969
    sget-object v12, Lcom/skydoves/balloon/Balloon$WhenMappings;->$EnumSwitchMapping$6:[I

    .line 970
    .line 971
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 972
    .line 973
    .line 974
    move-result v3

    .line 975
    aget v3, v12, v3

    .line 976
    .line 977
    if-eq v3, v8, :cond_1e

    .line 978
    .line 979
    const/4 v8, 0x2

    .line 980
    if-eq v3, v8, :cond_1d

    .line 981
    .line 982
    const/4 v8, 0x3

    .line 983
    if-eq v3, v8, :cond_1c

    .line 984
    .line 985
    const/4 v2, 0x4

    .line 986
    if-ne v3, v2, :cond_1b

    .line 987
    .line 988
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 989
    .line 990
    .line 991
    move-result v1

    .line 992
    mul-int/2addr v1, v5

    .line 993
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 994
    .line 995
    .line 996
    move-result-object v1

    .line 997
    add-int/2addr v6, v7

    .line 998
    neg-int v2, v6

    .line 999
    add-int/2addr v2, v0

    .line 1000
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v0

    .line 1004
    new-instance v2, Lkotlin/Pair;

    .line 1005
    .line 1006
    invoke-direct {v2, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1007
    .line 1008
    .line 1009
    goto :goto_e

    .line 1010
    :cond_1b
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1011
    .line 1012
    .line 1013
    goto :goto_f

    .line 1014
    :cond_1c
    invoke-virtual {v1}, Lcom/skydoves/balloon/Balloon;->getMeasuredWidth()I

    .line 1015
    .line 1016
    .line 1017
    move-result v1

    .line 1018
    neg-int v1, v1

    .line 1019
    mul-int/2addr v1, v5

    .line 1020
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v1

    .line 1024
    add-int/2addr v6, v7

    .line 1025
    neg-int v2, v6

    .line 1026
    add-int/2addr v2, v0

    .line 1027
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v0

    .line 1031
    new-instance v2, Lkotlin/Pair;

    .line 1032
    .line 1033
    invoke-direct {v2, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1034
    .line 1035
    .line 1036
    goto :goto_e

    .line 1037
    :cond_1d
    sub-int/2addr v2, v10

    .line 1038
    mul-int/2addr v2, v5

    .line 1039
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v1

    .line 1043
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v0

    .line 1047
    new-instance v2, Lkotlin/Pair;

    .line 1048
    .line 1049
    invoke-direct {v2, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1050
    .line 1051
    .line 1052
    goto :goto_e

    .line 1053
    :cond_1e
    sub-int/2addr v2, v10

    .line 1054
    mul-int/2addr v2, v5

    .line 1055
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v2

    .line 1059
    invoke-virtual {v1}, Lcom/skydoves/balloon/Balloon;->getMeasuredHeight()I

    .line 1060
    .line 1061
    .line 1062
    move-result v1

    .line 1063
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 1064
    .line 1065
    .line 1066
    move-result v3

    .line 1067
    add-int/2addr v3, v1

    .line 1068
    neg-int v1, v3

    .line 1069
    add-int/2addr v1, v0

    .line 1070
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v0

    .line 1074
    new-instance v1, Lkotlin/Pair;

    .line 1075
    .line 1076
    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1077
    .line 1078
    .line 1079
    goto/16 :goto_d

    .line 1080
    .line 1081
    :cond_1f
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v1

    .line 1085
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v0

    .line 1089
    new-instance v2, Lkotlin/Pair;

    .line 1090
    .line 1091
    invoke-direct {v2, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1092
    .line 1093
    .line 1094
    :goto_e
    iget-object v0, v2, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 1095
    .line 1096
    check-cast v0, Ljava/lang/Number;

    .line 1097
    .line 1098
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 1099
    .line 1100
    .line 1101
    move-result v0

    .line 1102
    iget-object v1, v2, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 1103
    .line 1104
    check-cast v1, Ljava/lang/Number;

    .line 1105
    .line 1106
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 1107
    .line 1108
    .line 1109
    move-result v1

    .line 1110
    invoke-virtual {v9}, Landroid/view/View;->getTranslationX()F

    .line 1111
    .line 1112
    .line 1113
    move-result v2

    .line 1114
    float-to-int v2, v2

    .line 1115
    add-int/2addr v0, v2

    .line 1116
    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    .line 1117
    .line 1118
    .line 1119
    move-result v2

    .line 1120
    float-to-int v2, v2

    .line 1121
    add-int/2addr v1, v2

    .line 1122
    invoke-virtual {v11, v9, v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1123
    .line 1124
    .line 1125
    :cond_20
    :goto_f
    return-void

    .line 1126
    :pswitch_5
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 1127
    .line 1128
    check-cast v1, Lcom/skydoves/balloon/Balloon;

    .line 1129
    .line 1130
    iget-object v3, v1, Lcom/skydoves/balloon/Balloon;->binding:Lcom/google/gson/GsonBuilder;

    .line 1131
    .line 1132
    iget-object v4, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 1133
    .line 1134
    check-cast v4, Landroid/view/View;

    .line 1135
    .line 1136
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 1137
    .line 1138
    check-cast v0, Landroid/widget/ImageView;

    .line 1139
    .line 1140
    iget-object v6, v1, Lcom/skydoves/balloon/Balloon;->onBalloonInitializedListener:Lcom/skydoves/balloon/BalloonKt$sam$com_skydoves_balloon_OnBalloonInitializedListener$0;

    .line 1141
    .line 1142
    iget-object v9, v1, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    .line 1143
    .line 1144
    if-eqz v6, :cond_21

    .line 1145
    .line 1146
    iget-object v10, v3, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 1147
    .line 1148
    check-cast v10, Lcom/skydoves/balloon/radius/RadiusLayout;

    .line 1149
    .line 1150
    iget-object v6, v6, Lcom/skydoves/balloon/BalloonKt$sam$com_skydoves_balloon_OnBalloonInitializedListener$0;->function:Lkotlin/jvm/functions/Function1;

    .line 1151
    .line 1152
    invoke-interface {v6, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    .line 1154
    .line 1155
    :cond_21
    iget-object v6, v9, Lcom/skydoves/balloon/Balloon$Builder;->arrowOrientationRules:Lcom/skydoves/balloon/ArrowOrientationRules;

    .line 1156
    .line 1157
    sget-object v10, Lcom/skydoves/balloon/ArrowOrientationRules;->ALIGN_FIXED:Lcom/skydoves/balloon/ArrowOrientationRules;

    .line 1158
    .line 1159
    if-ne v6, v10, :cond_22

    .line 1160
    .line 1161
    goto :goto_12

    .line 1162
    :cond_22
    new-instance v6, Landroid/graphics/Rect;

    .line 1163
    .line 1164
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 1165
    .line 1166
    .line 1167
    invoke-virtual {v4, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1168
    .line 1169
    .line 1170
    filled-new-array {v7, v7}, [I

    .line 1171
    .line 1172
    .line 1173
    move-result-object v10

    .line 1174
    iget-object v11, v1, Lcom/skydoves/balloon/Balloon;->bodyWindow:Landroid/widget/PopupWindow;

    .line 1175
    .line 1176
    invoke-virtual {v11}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v11

    .line 1180
    invoke-virtual {v11, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1181
    .line 1182
    .line 1183
    iget-object v11, v9, Lcom/skydoves/balloon/Balloon$Builder;->arrowOrientation:Lcom/skydoves/balloon/ArrowOrientation;

    .line 1184
    .line 1185
    sget-object v12, Lcom/skydoves/balloon/ArrowOrientation;->TOP:Lcom/skydoves/balloon/ArrowOrientation;

    .line 1186
    .line 1187
    if-ne v11, v12, :cond_23

    .line 1188
    .line 1189
    aget v13, v10, v8

    .line 1190
    .line 1191
    iget v14, v6, Landroid/graphics/Rect;->bottom:I

    .line 1192
    .line 1193
    if-ge v13, v14, :cond_23

    .line 1194
    .line 1195
    sget-object v11, Lcom/skydoves/balloon/ArrowOrientation;->BOTTOM:Lcom/skydoves/balloon/ArrowOrientation;

    .line 1196
    .line 1197
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1198
    .line 1199
    .line 1200
    iput-object v11, v9, Lcom/skydoves/balloon/Balloon$Builder;->arrowOrientation:Lcom/skydoves/balloon/ArrowOrientation;

    .line 1201
    .line 1202
    goto :goto_10

    .line 1203
    :cond_23
    sget-object v13, Lcom/skydoves/balloon/ArrowOrientation;->BOTTOM:Lcom/skydoves/balloon/ArrowOrientation;

    .line 1204
    .line 1205
    if-ne v11, v13, :cond_24

    .line 1206
    .line 1207
    aget v13, v10, v8

    .line 1208
    .line 1209
    iget v14, v6, Landroid/graphics/Rect;->top:I

    .line 1210
    .line 1211
    if-le v13, v14, :cond_24

    .line 1212
    .line 1213
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1214
    .line 1215
    .line 1216
    iput-object v12, v9, Lcom/skydoves/balloon/Balloon$Builder;->arrowOrientation:Lcom/skydoves/balloon/ArrowOrientation;

    .line 1217
    .line 1218
    move-object v11, v12

    .line 1219
    :cond_24
    :goto_10
    sget-object v12, Lcom/skydoves/balloon/ArrowOrientation;->START:Lcom/skydoves/balloon/ArrowOrientation;

    .line 1220
    .line 1221
    if-ne v11, v12, :cond_25

    .line 1222
    .line 1223
    aget v13, v10, v7

    .line 1224
    .line 1225
    iget v14, v6, Landroid/graphics/Rect;->right:I

    .line 1226
    .line 1227
    if-ge v13, v14, :cond_25

    .line 1228
    .line 1229
    sget-object v6, Lcom/skydoves/balloon/ArrowOrientation;->END:Lcom/skydoves/balloon/ArrowOrientation;

    .line 1230
    .line 1231
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1232
    .line 1233
    .line 1234
    iput-object v6, v9, Lcom/skydoves/balloon/Balloon$Builder;->arrowOrientation:Lcom/skydoves/balloon/ArrowOrientation;

    .line 1235
    .line 1236
    goto :goto_11

    .line 1237
    :cond_25
    sget-object v13, Lcom/skydoves/balloon/ArrowOrientation;->END:Lcom/skydoves/balloon/ArrowOrientation;

    .line 1238
    .line 1239
    if-ne v11, v13, :cond_26

    .line 1240
    .line 1241
    aget v10, v10, v7

    .line 1242
    .line 1243
    iget v6, v6, Landroid/graphics/Rect;->left:I

    .line 1244
    .line 1245
    if-le v10, v6, :cond_26

    .line 1246
    .line 1247
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1248
    .line 1249
    .line 1250
    iput-object v12, v9, Lcom/skydoves/balloon/Balloon$Builder;->arrowOrientation:Lcom/skydoves/balloon/ArrowOrientation;

    .line 1251
    .line 1252
    :cond_26
    :goto_11
    invoke-virtual {v1}, Lcom/skydoves/balloon/Balloon;->initializeBalloonContent()V

    .line 1253
    .line 1254
    .line 1255
    :goto_12
    iget-object v6, v3, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 1256
    .line 1257
    check-cast v6, Landroid/widget/ImageView;

    .line 1258
    .line 1259
    iget-object v3, v3, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 1260
    .line 1261
    check-cast v3, Lcom/skydoves/balloon/radius/RadiusLayout;

    .line 1262
    .line 1263
    sget-object v10, Lcom/skydoves/balloon/ArrowOrientation;->Companion:Lcom/skydoves/balloon/ArrowOrientation$Companion;

    .line 1264
    .line 1265
    iget-object v11, v9, Lcom/skydoves/balloon/Balloon$Builder;->arrowOrientation:Lcom/skydoves/balloon/ArrowOrientation;

    .line 1266
    .line 1267
    iget-boolean v12, v9, Lcom/skydoves/balloon/Balloon$Builder;->isRtlLayout:Z

    .line 1268
    .line 1269
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1270
    .line 1271
    .line 1272
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1273
    .line 1274
    .line 1275
    if-nez v12, :cond_27

    .line 1276
    .line 1277
    goto :goto_13

    .line 1278
    :cond_27
    sget-object v10, Lcom/skydoves/balloon/ArrowOrientation$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 1279
    .line 1280
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 1281
    .line 1282
    .line 1283
    move-result v12

    .line 1284
    aget v10, v10, v12

    .line 1285
    .line 1286
    if-eq v10, v8, :cond_29

    .line 1287
    .line 1288
    const/4 v12, 0x2

    .line 1289
    if-eq v10, v12, :cond_28

    .line 1290
    .line 1291
    goto :goto_13

    .line 1292
    :cond_28
    sget-object v11, Lcom/skydoves/balloon/ArrowOrientation;->START:Lcom/skydoves/balloon/ArrowOrientation;

    .line 1293
    .line 1294
    goto :goto_13

    .line 1295
    :cond_29
    sget-object v11, Lcom/skydoves/balloon/ArrowOrientation;->END:Lcom/skydoves/balloon/ArrowOrientation;

    .line 1296
    .line 1297
    :goto_13
    sget-object v10, Lcom/skydoves/balloon/Balloon$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 1298
    .line 1299
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 1300
    .line 1301
    .line 1302
    move-result v11

    .line 1303
    aget v10, v10, v11

    .line 1304
    .line 1305
    const/4 v11, 0x0

    .line 1306
    if-eq v10, v8, :cond_2d

    .line 1307
    .line 1308
    const/4 v8, 0x2

    .line 1309
    if-eq v10, v8, :cond_2c

    .line 1310
    .line 1311
    const/4 v8, 0x3

    .line 1312
    if-eq v10, v8, :cond_2b

    .line 1313
    .line 1314
    const/4 v8, 0x4

    .line 1315
    if-ne v10, v8, :cond_2a

    .line 1316
    .line 1317
    const/high16 v8, 0x42b40000    # 90.0f

    .line 1318
    .line 1319
    invoke-virtual {v6, v8}, Landroid/view/View;->setRotation(F)V

    .line 1320
    .line 1321
    .line 1322
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    .line 1323
    .line 1324
    .line 1325
    move-result v8

    .line 1326
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 1327
    .line 1328
    .line 1329
    move-result v9

    .line 1330
    int-to-float v9, v9

    .line 1331
    add-float/2addr v8, v9

    .line 1332
    sub-float/2addr v8, v2

    .line 1333
    invoke-virtual {v6, v8}, Landroid/view/View;->setX(F)V

    .line 1334
    .line 1335
    .line 1336
    invoke-virtual {v1, v4}, Lcom/skydoves/balloon/Balloon;->getArrowConstraintPositionY(Landroid/view/View;)F

    .line 1337
    .line 1338
    .line 1339
    move-result v1

    .line 1340
    invoke-virtual {v6, v1}, Landroid/view/View;->setY(F)V

    .line 1341
    .line 1342
    .line 1343
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 1344
    .line 1345
    .line 1346
    invoke-virtual {v6}, Landroid/view/View;->getY()F

    .line 1347
    .line 1348
    .line 1349
    invoke-virtual {v6, v5}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1350
    .line 1351
    .line 1352
    goto :goto_14

    .line 1353
    :cond_2a
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1354
    .line 1355
    .line 1356
    goto :goto_15

    .line 1357
    :cond_2b
    const/high16 v8, -0x3d4c0000    # -90.0f

    .line 1358
    .line 1359
    invoke-virtual {v6, v8}, Landroid/view/View;->setRotation(F)V

    .line 1360
    .line 1361
    .line 1362
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    .line 1363
    .line 1364
    .line 1365
    move-result v3

    .line 1366
    invoke-virtual {v9}, Lcom/skydoves/balloon/Balloon$Builder;->getEffectiveArrowWidth()I

    .line 1367
    .line 1368
    .line 1369
    move-result v8

    .line 1370
    int-to-float v8, v8

    .line 1371
    sub-float/2addr v3, v8

    .line 1372
    add-float/2addr v3, v2

    .line 1373
    invoke-virtual {v6, v3}, Landroid/view/View;->setX(F)V

    .line 1374
    .line 1375
    .line 1376
    invoke-virtual {v1, v4}, Lcom/skydoves/balloon/Balloon;->getArrowConstraintPositionY(Landroid/view/View;)F

    .line 1377
    .line 1378
    .line 1379
    move-result v1

    .line 1380
    invoke-virtual {v6, v1}, Landroid/view/View;->setY(F)V

    .line 1381
    .line 1382
    .line 1383
    invoke-virtual {v6}, Landroid/view/View;->getY()F

    .line 1384
    .line 1385
    .line 1386
    invoke-virtual {v6, v5}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1387
    .line 1388
    .line 1389
    goto :goto_14

    .line 1390
    :cond_2c
    invoke-virtual {v6, v11}, Landroid/view/View;->setRotation(F)V

    .line 1391
    .line 1392
    .line 1393
    invoke-virtual {v1, v4}, Lcom/skydoves/balloon/Balloon;->getArrowConstraintPositionX(Landroid/view/View;)F

    .line 1394
    .line 1395
    .line 1396
    move-result v1

    .line 1397
    invoke-virtual {v6, v1}, Landroid/view/View;->setX(F)V

    .line 1398
    .line 1399
    .line 1400
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    .line 1401
    .line 1402
    .line 1403
    move-result v1

    .line 1404
    invoke-virtual {v9}, Lcom/skydoves/balloon/Balloon$Builder;->getEffectiveArrowHeight()I

    .line 1405
    .line 1406
    .line 1407
    move-result v3

    .line 1408
    int-to-float v3, v3

    .line 1409
    sub-float/2addr v1, v3

    .line 1410
    add-float/2addr v1, v2

    .line 1411
    invoke-virtual {v6, v1}, Landroid/view/View;->setY(F)V

    .line 1412
    .line 1413
    .line 1414
    invoke-virtual {v6}, Landroid/view/View;->getX()F

    .line 1415
    .line 1416
    .line 1417
    invoke-virtual {v6, v5}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1418
    .line 1419
    .line 1420
    goto :goto_14

    .line 1421
    :cond_2d
    const/high16 v8, 0x43340000    # 180.0f

    .line 1422
    .line 1423
    invoke-virtual {v6, v8}, Landroid/view/View;->setRotation(F)V

    .line 1424
    .line 1425
    .line 1426
    invoke-virtual {v1, v4}, Lcom/skydoves/balloon/Balloon;->getArrowConstraintPositionX(Landroid/view/View;)F

    .line 1427
    .line 1428
    .line 1429
    move-result v1

    .line 1430
    invoke-virtual {v6, v1}, Landroid/view/View;->setX(F)V

    .line 1431
    .line 1432
    .line 1433
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    .line 1434
    .line 1435
    .line 1436
    move-result v1

    .line 1437
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 1438
    .line 1439
    .line 1440
    move-result v4

    .line 1441
    int-to-float v4, v4

    .line 1442
    add-float/2addr v1, v4

    .line 1443
    sub-float/2addr v1, v2

    .line 1444
    invoke-virtual {v6, v1}, Landroid/view/View;->setY(F)V

    .line 1445
    .line 1446
    .line 1447
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 1448
    .line 1449
    invoke-virtual {v6, v11}, Landroid/view/View;->setElevation(F)V

    .line 1450
    .line 1451
    .line 1452
    invoke-virtual {v6}, Landroid/view/View;->getX()F

    .line 1453
    .line 1454
    .line 1455
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 1456
    .line 1457
    .line 1458
    invoke-virtual {v6, v5}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1459
    .line 1460
    .line 1461
    :goto_14
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1462
    .line 1463
    .line 1464
    :goto_15
    return-void

    .line 1465
    :pswitch_6
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 1466
    .line 1467
    check-cast v1, Landroidx/work/impl/WorkDatabase;

    .line 1468
    .line 1469
    iget-object v2, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 1470
    .line 1471
    check-cast v2, Ljava/lang/String;

    .line 1472
    .line 1473
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 1474
    .line 1475
    check-cast v0, Landroidx/work/impl/WorkManagerImpl;

    .line 1476
    .line 1477
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 1478
    .line 1479
    .line 1480
    move-result-object v1

    .line 1481
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1482
    .line 1483
    .line 1484
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1485
    .line 1486
    .line 1487
    iget-object v1, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1488
    .line 1489
    new-instance v3, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;

    .line 1490
    .line 1491
    const/16 v4, 0xf

    .line 1492
    .line 1493
    invoke-direct {v3, v4, v2}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;)V

    .line 1494
    .line 1495
    .line 1496
    invoke-static {v1, v8, v7, v3}, Lkotlin/ExceptionsKt;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 1497
    .line 1498
    .line 1499
    move-result-object v1

    .line 1500
    check-cast v1, Ljava/util/List;

    .line 1501
    .line 1502
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v1

    .line 1506
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1507
    .line 1508
    .line 1509
    move-result v2

    .line 1510
    if-eqz v2, :cond_2e

    .line 1511
    .line 1512
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1513
    .line 1514
    .line 1515
    move-result-object v2

    .line 1516
    check-cast v2, Ljava/lang/String;

    .line 1517
    .line 1518
    invoke-static {v0, v2}, Landroidx/work/impl/utils/EnqueueUtilsKt;->cancel(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    .line 1519
    .line 1520
    .line 1521
    goto :goto_16

    .line 1522
    :cond_2e
    return-void

    .line 1523
    :pswitch_7
    invoke-direct {v0}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->run$androidx$work$impl$WorkLauncherImpl$$ExternalSyntheticLambda0()V

    .line 1524
    .line 1525
    .line 1526
    return-void

    .line 1527
    :pswitch_8
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 1528
    .line 1529
    check-cast v1, Landroid/view/ViewGroup;

    .line 1530
    .line 1531
    iget-object v2, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 1532
    .line 1533
    check-cast v2, Landroid/view/View;

    .line 1534
    .line 1535
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 1536
    .line 1537
    check-cast v0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationEffect;

    .line 1538
    .line 1539
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1540
    .line 1541
    .line 1542
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1543
    .line 1544
    .line 1545
    iget-object v1, v0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationEffect;->animationInfo:Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    .line 1546
    .line 1547
    iget-object v1, v1, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 1548
    .line 1549
    check-cast v1, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    .line 1550
    .line 1551
    invoke-virtual {v1, v0}, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->completeEffect(Landroidx/fragment/app/SpecialEffectsController$Effect;)V

    .line 1552
    .line 1553
    .line 1554
    return-void

    .line 1555
    :pswitch_9
    invoke-direct {v0}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->run$androidx$emoji2$text$EmojiCompatInitializer$BackgroundDefaultLoader$$ExternalSyntheticLambda0()V

    .line 1556
    .line 1557
    .line 1558
    return-void

    .line 1559
    :pswitch_a
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 1560
    .line 1561
    check-cast v1, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;

    .line 1562
    .line 1563
    iget-object v2, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 1564
    .line 1565
    check-cast v2, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$TextActionModeCallbackImpl;

    .line 1566
    .line 1567
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 1568
    .line 1569
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$TextContextMenuSessionImpl;

    .line 1570
    .line 1571
    iget-object v3, v1, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->view:Landroid/view/View;

    .line 1572
    .line 1573
    new-instance v4, Landroidx/compose/foundation/text/contextmenu/internal/FloatingTextActionModeCallback;

    .line 1574
    .line 1575
    invoke-direct {v4, v2}, Landroidx/compose/foundation/text/contextmenu/internal/FloatingTextActionModeCallback;-><init>(Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$TextActionModeCallbackImpl;)V

    .line 1576
    .line 1577
    .line 1578
    invoke-virtual {v3, v4, v8}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    .line 1579
    .line 1580
    .line 1581
    move-result-object v2

    .line 1582
    iget-object v1, v1, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->actionMode:Landroid/view/ActionMode;

    .line 1583
    .line 1584
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1585
    .line 1586
    .line 1587
    if-nez v2, :cond_2f

    .line 1588
    .line 1589
    invoke-virtual {v0}, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$TextContextMenuSessionImpl;->close()V

    .line 1590
    .line 1591
    .line 1592
    :cond_2f
    return-void

    .line 1593
    :pswitch_b
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 1594
    .line 1595
    check-cast v1, Landroidx/work/impl/Processor;

    .line 1596
    .line 1597
    iget-object v2, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 1598
    .line 1599
    check-cast v2, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 1600
    .line 1601
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 1602
    .line 1603
    check-cast v0, Landroidx/work/impl/WorkerWrapper;

    .line 1604
    .line 1605
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1606
    .line 1607
    .line 1608
    :try_start_0
    iget-object v2, v2, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->delegate:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;

    .line 1609
    .line 1610
    invoke-virtual {v2}, Landroidx/concurrent/futures/AbstractResolvableFuture;->get()Ljava/lang/Object;

    .line 1611
    .line 1612
    .line 1613
    move-result-object v2

    .line 1614
    check-cast v2, Ljava/lang/Boolean;

    .line 1615
    .line 1616
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1617
    .line 1618
    .line 1619
    move-result v8
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1620
    :catch_0
    const-string v2, "Processor "

    .line 1621
    .line 1622
    iget-object v3, v1, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    .line 1623
    .line 1624
    monitor-enter v3

    .line 1625
    :try_start_1
    iget-object v4, v0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 1626
    .line 1627
    invoke-static {v4}, Lkotlin/ResultKt;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    .line 1628
    .line 1629
    .line 1630
    move-result-object v4

    .line 1631
    iget-object v5, v4, Landroidx/work/impl/model/WorkGenerationalId;->workSpecId:Ljava/lang/String;

    .line 1632
    .line 1633
    invoke-virtual {v1, v5}, Landroidx/work/impl/Processor;->getWorkerWrapperUnsafe(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    .line 1634
    .line 1635
    .line 1636
    move-result-object v6

    .line 1637
    if-ne v6, v0, :cond_30

    .line 1638
    .line 1639
    invoke-virtual {v1, v5}, Landroidx/work/impl/Processor;->cleanUpWorkerUnsafe(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    .line 1640
    .line 1641
    .line 1642
    goto :goto_17

    .line 1643
    :catchall_0
    move-exception v0

    .line 1644
    goto :goto_19

    .line 1645
    :cond_30
    :goto_17
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 1646
    .line 1647
    .line 1648
    move-result-object v0

    .line 1649
    sget-object v6, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    .line 1650
    .line 1651
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1652
    .line 1653
    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1654
    .line 1655
    .line 1656
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1657
    .line 1658
    .line 1659
    const-string v2, " executed; reschedule = "

    .line 1660
    .line 1661
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1662
    .line 1663
    .line 1664
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1665
    .line 1666
    .line 1667
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1668
    .line 1669
    .line 1670
    move-result-object v2

    .line 1671
    invoke-virtual {v0, v6, v2}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    .line 1673
    .line 1674
    iget-object v0, v1, Landroidx/work/impl/Processor;->mOuterListeners:Ljava/util/ArrayList;

    .line 1675
    .line 1676
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1677
    .line 1678
    .line 1679
    move-result-object v0

    .line 1680
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1681
    .line 1682
    .line 1683
    move-result v1

    .line 1684
    if-eqz v1, :cond_31

    .line 1685
    .line 1686
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1687
    .line 1688
    .line 1689
    move-result-object v1

    .line 1690
    check-cast v1, Landroidx/work/impl/ExecutionListener;

    .line 1691
    .line 1692
    invoke-interface {v1, v4, v8}, Landroidx/work/impl/ExecutionListener;->onExecuted(Landroidx/work/impl/model/WorkGenerationalId;Z)V

    .line 1693
    .line 1694
    .line 1695
    goto :goto_18

    .line 1696
    :cond_31
    monitor-exit v3

    .line 1697
    return-void

    .line 1698
    :goto_19
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1699
    throw v0

    .line 1700
    nop

    .line 1701
    :pswitch_data_0
    .packed-switch 0x0
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
