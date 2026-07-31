.class public final synthetic Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;Ljava/lang/Object;I)V
    .locals 0

    .line 18
    iput p5, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/core/processing/DefaultSurfaceProcessor;Landroidx/camera/core/DynamicRange;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 1

    .line 17
    const/4 v0, 0x6

    iput v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->$r8$classId:I

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;Landroidx/camera/core/DynamicRange;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    iput v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p2, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p3, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 15
    .line 16
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 19
    iput p4, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    check-cast v1, Landroidx/work/Operation$State;

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
    invoke-static {v0}, Lkotlin/math/MathKt;->create(Landroid/content/Context;)Landroidx/emoji2/text/FontRequestEmojiCompatConfig;

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
    invoke-direct {v2, v1, p0}, Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader$1;-><init>(Landroidx/work/Operation$State;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v2}, Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;->load(Landroidx/work/Operation$State;)V
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
    invoke-virtual {v1, v0}, Landroidx/work/Operation$State;->onFailed(Ljava/lang/Throwable;)V

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
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/beetstra/jutf7/Base64Util;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/work/impl/StartStopToken;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

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
    invoke-direct {v6, v0, v4, v3}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/Processor;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, v6}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Landroidx/work/impl/model/WorkSpec;

    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    if-nez v5, :cond_0

    .line 42
    .line 43
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    sget-object v1, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v4, "Didn\'t find WorkSpec for id "

    .line 52
    .line 53
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {p0, v1, v3}, Landroidx/work/Logger$LogcatLogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object p0, v0, Landroidx/work/impl/Processor;->mWorkTaskExecutor:Lokhttp3/Dispatcher;

    .line 67
    .line 68
    iget-object p0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p0, Landroidx/camera/core/impl/utils/executor/IoExecutor;

    .line 71
    .line 72
    new-instance v1, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 73
    .line 74
    invoke-direct {v1, v6, v0, v2}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v1}, Landroidx/camera/core/impl/utils/executor/IoExecutor;->execute(Ljava/lang/Runnable;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_0
    iget-object v7, v0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    .line 82
    .line 83
    monitor-enter v7

    .line 84
    :try_start_0
    invoke-virtual {v0, v3}, Landroidx/work/impl/Processor;->isEnqueued(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    if-eqz v8, :cond_2

    .line 89
    .line 90
    iget-object v4, v0, Landroidx/work/impl/Processor;->mWorkRuns:Ljava/util/HashMap;

    .line 91
    .line 92
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Ljava/util/Set;

    .line 97
    .line 98
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    check-cast v4, Landroidx/work/impl/StartStopToken;

    .line 107
    .line 108
    iget-object v4, v4, Landroidx/work/impl/StartStopToken;->id:Landroidx/work/impl/model/WorkGenerationalId;

    .line 109
    .line 110
    iget v4, v4, Landroidx/work/impl/model/WorkGenerationalId;->generation:I

    .line 111
    .line 112
    iget v5, v2, Landroidx/work/impl/model/WorkGenerationalId;->generation:I

    .line 113
    .line 114
    if-ne v4, v5, :cond_1

    .line 115
    .line 116
    invoke-interface {v3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    sget-object v0, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    .line 124
    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, " is already enqueued for processing"

    .line 134
    .line 135
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {p0, v0, v1}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :catchall_0
    move-exception p0

    .line 147
    goto/16 :goto_1

    .line 148
    .line 149
    :cond_1
    iget-object p0, v0, Landroidx/work/impl/Processor;->mWorkTaskExecutor:Lokhttp3/Dispatcher;

    .line 150
    .line 151
    iget-object p0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast p0, Landroidx/camera/core/impl/utils/executor/IoExecutor;

    .line 154
    .line 155
    new-instance v1, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 156
    .line 157
    invoke-direct {v1, v6, v0, v2}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, v1}, Landroidx/camera/core/impl/utils/executor/IoExecutor;->execute(Ljava/lang/Runnable;)V

    .line 161
    .line 162
    .line 163
    :goto_0
    monitor-exit v7

    .line 164
    return-void

    .line 165
    :cond_2
    iget v1, v5, Landroidx/work/impl/model/WorkSpec;->generation:I

    .line 166
    .line 167
    iget v8, v2, Landroidx/work/impl/model/WorkGenerationalId;->generation:I

    .line 168
    .line 169
    if-eq v1, v8, :cond_3

    .line 170
    .line 171
    iget-object p0, v0, Landroidx/work/impl/Processor;->mWorkTaskExecutor:Lokhttp3/Dispatcher;

    .line 172
    .line 173
    iget-object p0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast p0, Landroidx/camera/core/impl/utils/executor/IoExecutor;

    .line 176
    .line 177
    new-instance v1, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 178
    .line 179
    invoke-direct {v1, v6, v0, v2}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, v1}, Landroidx/camera/core/impl/utils/executor/IoExecutor;->execute(Ljava/lang/Runnable;)V

    .line 183
    .line 184
    .line 185
    monitor-exit v7

    .line 186
    return-void

    .line 187
    :cond_3
    new-instance v1, Landroidx/appcompat/widget/TooltipPopup;

    .line 188
    .line 189
    iget-object v8, v0, Landroidx/work/impl/Processor;->mAppContext:Landroid/content/Context;

    .line 190
    .line 191
    iget-object v9, v0, Landroidx/work/impl/Processor;->mConfiguration:Landroidx/work/Configuration;

    .line 192
    .line 193
    iget-object v10, v0, Landroidx/work/impl/Processor;->mWorkTaskExecutor:Lokhttp3/Dispatcher;

    .line 194
    .line 195
    iget-object v11, v0, Landroidx/work/impl/Processor;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 196
    .line 197
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 204
    .line 205
    .line 206
    iput-object v9, v1, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Ljava/lang/Object;

    .line 207
    .line 208
    iput-object v10, v1, Landroidx/appcompat/widget/TooltipPopup;->mMessageView:Ljava/lang/Object;

    .line 209
    .line 210
    iput-object v0, v1, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Ljava/lang/Object;

    .line 211
    .line 212
    iput-object v11, v1, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Ljava/lang/Object;

    .line 213
    .line 214
    iput-object v5, v1, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:Ljava/lang/Object;

    .line 215
    .line 216
    iput-object v4, v1, Landroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:Ljava/lang/Object;

    .line 217
    .line 218
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    iput-object v4, v1, Landroidx/appcompat/widget/TooltipPopup;->mContext:Ljava/lang/Object;

    .line 226
    .line 227
    new-instance v4, Landroidx/work/impl/WorkerWrapper;

    .line 228
    .line 229
    invoke-direct {v4, v1}, Landroidx/work/impl/WorkerWrapper;-><init>(Landroidx/appcompat/widget/TooltipPopup;)V

    .line 230
    .line 231
    .line 232
    iget-object v1, v4, Landroidx/work/impl/WorkerWrapper;->workTaskExecutor:Lokhttp3/Dispatcher;

    .line 233
    .line 234
    iget-object v1, v1, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast v1, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 237
    .line 238
    invoke-static {}, Lkotlinx/coroutines/JobKt;->Job$default()Lkotlinx/coroutines/JobImpl;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    invoke-virtual {v1, v5}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    new-instance v5, Landroidx/work/impl/WorkerWrapper$launch$1;

    .line 247
    .line 248
    const/4 v8, 0x0

    .line 249
    invoke-direct {v5, v4, v8, v6}, Landroidx/work/impl/WorkerWrapper$launch$1;-><init>(Landroidx/work/impl/WorkerWrapper;Lkotlin/coroutines/Continuation;I)V

    .line 250
    .line 251
    .line 252
    invoke-static {v1, v5}, Lkotlin/math/MathKt;->launchFuture$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    new-instance v5, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    .line 257
    .line 258
    invoke-direct {v5, v0, v1, v4, v6}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 259
    .line 260
    .line 261
    iget-object v6, v0, Landroidx/work/impl/Processor;->mWorkTaskExecutor:Lokhttp3/Dispatcher;

    .line 262
    .line 263
    iget-object v6, v6, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 264
    .line 265
    check-cast v6, Landroidx/camera/core/impl/utils/executor/IoExecutor;

    .line 266
    .line 267
    iget-object v1, v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->delegate:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;

    .line 268
    .line 269
    invoke-virtual {v1, v5, v6}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 270
    .line 271
    .line 272
    iget-object v1, v0, Landroidx/work/impl/Processor;->mEnqueuedWorkMap:Ljava/util/HashMap;

    .line 273
    .line 274
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    new-instance v1, Ljava/util/HashSet;

    .line 278
    .line 279
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    iget-object p0, v0, Landroidx/work/impl/Processor;->mWorkRuns:Ljava/util/HashMap;

    .line 286
    .line 287
    invoke-virtual {p0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    sget-object v0, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    .line 296
    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    const-string v3, "Processor: processing "

    .line 300
    .line 301
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    invoke-virtual {p0, v0, v1}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    return-void

    .line 315
    :goto_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lcom/fsck/k9/controller/MessagingController;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalMessage;->makeMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, v1, p0}, Lcom/fsck/k9/notification/NotificationController;->removeNewMailNotification(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lapp/k9mail/legacy/message/controller/MessageReference;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Lcom/fsck/k9/controller/MessagingController;

    .line 34
    .line 35
    iget-object v1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 38
    .line 39
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->refreshFolderListSynchronous(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    :pswitch_1
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v0, Landroidx/work/impl/WorkDatabase;

    .line 61
    .line 62
    iget-object v3, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v3, Ljava/lang/String;

    .line 65
    .line 66
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p0, Landroidx/work/impl/WorkManagerImpl;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 81
    .line 82
    new-instance v4, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;

    .line 83
    .line 84
    const/16 v5, 0x10

    .line 85
    .line 86
    invoke-direct {v4, v3, v5}, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;I)V

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v2, v1, v4}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Ljava/util/List;

    .line 94
    .line 95
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_0

    .line 104
    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {p0, v1}, Landroidx/work/impl/utils/EnqueueUtilsKt;->cancel(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_0
    return-void

    .line 116
    :pswitch_2
    invoke-direct {p0}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->run$androidx$work$impl$WorkLauncherImpl$$ExternalSyntheticLambda0()V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :pswitch_3
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v0, Landroid/view/ViewGroup;

    .line 123
    .line 124
    iget-object v1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v1, Landroid/view/View;

    .line 127
    .line 128
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationEffect;

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationEffect;->animationInfo:Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    .line 139
    .line 140
    iget-object v0, v0, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    .line 143
    .line 144
    invoke-virtual {v0, p0}, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->completeEffect(Landroidx/fragment/app/SpecialEffectsController$Effect;)V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :pswitch_4
    invoke-direct {p0}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->run$androidx$emoji2$text$EmojiCompatInitializer$BackgroundDefaultLoader$$ExternalSyntheticLambda0()V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :pswitch_5
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;

    .line 155
    .line 156
    iget-object v1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v1, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$TextActionModeCallbackImpl;

    .line 159
    .line 160
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$TextContextMenuSessionImpl;

    .line 163
    .line 164
    iget-object v3, v0, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->view:Landroid/view/View;

    .line 165
    .line 166
    new-instance v4, Landroidx/compose/foundation/text/contextmenu/internal/FloatingTextActionModeCallback;

    .line 167
    .line 168
    invoke-direct {v4, v1}, Landroidx/compose/foundation/text/contextmenu/internal/FloatingTextActionModeCallback;-><init>(Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$TextActionModeCallbackImpl;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, v4, v2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    iget-object v0, v0, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->actionMode:Landroid/view/ActionMode;

    .line 176
    .line 177
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    if-nez v1, :cond_1

    .line 181
    .line 182
    invoke-virtual {p0}, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$TextContextMenuSessionImpl;->close()V

    .line 183
    .line 184
    .line 185
    :cond_1
    return-void

    .line 186
    :pswitch_6
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v0, Landroidx/camera/view/SurfaceViewImplementation;

    .line 189
    .line 190
    iget-object v2, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v2, Landroidx/camera/core/SurfaceRequest;

    .line 193
    .line 194
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast p0, Landroidx/camera/view/PreviewView$1$$ExternalSyntheticLambda2;

    .line 197
    .line 198
    iget-object v0, v0, Landroidx/camera/view/SurfaceViewImplementation;->mSurfaceRequestCallback:Landroidx/camera/view/SurfaceViewImplementation$SurfaceRequestCallback;

    .line 199
    .line 200
    invoke-virtual {v0}, Landroidx/camera/view/SurfaceViewImplementation$SurfaceRequestCallback;->cancelPreviousRequest()V

    .line 201
    .line 202
    .line 203
    iget-boolean v4, v0, Landroidx/camera/view/SurfaceViewImplementation$SurfaceRequestCallback;->mNeedToInvalidate:Z

    .line 204
    .line 205
    if-eqz v4, :cond_2

    .line 206
    .line 207
    iput-boolean v1, v0, Landroidx/camera/view/SurfaceViewImplementation$SurfaceRequestCallback;->mNeedToInvalidate:Z

    .line 208
    .line 209
    invoke-virtual {v2}, Landroidx/camera/core/SurfaceRequest;->willNotProvideSurface()Z

    .line 210
    .line 211
    .line 212
    iget-object p0, v2, Landroidx/camera/core/SurfaceRequest;->mSurfaceRecreationCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 213
    .line 214
    invoke-virtual {p0, v3}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_2
    iput-object v2, v0, Landroidx/camera/view/SurfaceViewImplementation$SurfaceRequestCallback;->mSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 219
    .line 220
    iput-object p0, v0, Landroidx/camera/view/SurfaceViewImplementation$SurfaceRequestCallback;->mOnSurfaceNotInUseListener:Landroidx/camera/view/PreviewView$1$$ExternalSyntheticLambda2;

    .line 221
    .line 222
    iget-object p0, v2, Landroidx/camera/core/SurfaceRequest;->mResolution:Landroid/util/Size;

    .line 223
    .line 224
    iput-object p0, v0, Landroidx/camera/view/SurfaceViewImplementation$SurfaceRequestCallback;->mTargetSize:Landroid/util/Size;

    .line 225
    .line 226
    iput-boolean v1, v0, Landroidx/camera/view/SurfaceViewImplementation$SurfaceRequestCallback;->mWasSurfaceProvided:Z

    .line 227
    .line 228
    invoke-virtual {v0}, Landroidx/camera/view/SurfaceViewImplementation$SurfaceRequestCallback;->tryToComplete()Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-nez v1, :cond_3

    .line 233
    .line 234
    const-string v1, "SurfaceViewImpl"

    .line 235
    .line 236
    const-string v2, "Wait for new Surface creation."

    .line 237
    .line 238
    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    iget-object v0, v0, Landroidx/camera/view/SurfaceViewImplementation$SurfaceRequestCallback;->this$0:Landroidx/camera/view/SurfaceViewImplementation;

    .line 242
    .line 243
    iget-object v0, v0, Landroidx/camera/view/SurfaceViewImplementation;->mSurfaceView:Landroid/view/SurfaceView;

    .line 244
    .line 245
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    .line 254
    .line 255
    .line 256
    move-result p0

    .line 257
    invoke-interface {v0, v1, p0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 258
    .line 259
    .line 260
    :cond_3
    :goto_1
    return-void

    .line 261
    :pswitch_7
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;

    .line 264
    .line 265
    iget-object v1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast v1, Ljava/lang/Runnable;

    .line 268
    .line 269
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 270
    .line 271
    check-cast p0, Ljava/lang/Runnable;

    .line 272
    .line 273
    iget-boolean v0, v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->mIsReleased:Z

    .line 274
    .line 275
    if-eqz v0, :cond_4

    .line 276
    .line 277
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 278
    .line 279
    .line 280
    goto :goto_2

    .line 281
    :cond_4
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 282
    .line 283
    .line 284
    :goto_2
    return-void

    .line 285
    :pswitch_8
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 286
    .line 287
    check-cast v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;

    .line 288
    .line 289
    iget-object v1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 290
    .line 291
    check-cast v1, Landroidx/camera/core/DynamicRange;

    .line 292
    .line 293
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 294
    .line 295
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 296
    .line 297
    check-cast p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 298
    .line 299
    :try_start_1
    iget-object v0, v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->mGlRenderer:Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;

    .line 300
    .line 301
    invoke-virtual {v0, v1}, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->init(Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo;

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0, v3}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 305
    .line 306
    .line 307
    goto :goto_3

    .line 308
    :catch_0
    move-exception v0

    .line 309
    invoke-virtual {p0, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 310
    .line 311
    .line 312
    :goto_3
    return-void

    .line 313
    :pswitch_9
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 314
    .line 315
    check-cast v0, Landroidx/core/view/MenuHostHelper;

    .line 316
    .line 317
    iget-object v1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 318
    .line 319
    check-cast v1, Landroidx/camera/core/processing/SurfaceEdge;

    .line 320
    .line 321
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 322
    .line 323
    check-cast p0, Ljava/util/Map$Entry;

    .line 324
    .line 325
    invoke-virtual {v0, v1, p0}, Landroidx/core/view/MenuHostHelper;->createAndSendSurfaceOutput(Landroidx/camera/core/processing/SurfaceEdge;Ljava/util/Map$Entry;)V

    .line 326
    .line 327
    .line 328
    return-void

    .line 329
    :pswitch_a
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 330
    .line 331
    check-cast v0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    .line 332
    .line 333
    iget-object v1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 334
    .line 335
    check-cast v1, Landroidx/camera/core/DynamicRange;

    .line 336
    .line 337
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 338
    .line 339
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 340
    .line 341
    check-cast p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 342
    .line 343
    :try_start_2
    iget-object v0, v0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlRenderer:Landroidx/camera/core/processing/OpenGlRenderer;

    .line 344
    .line 345
    invoke-virtual {v0, v1}, Landroidx/camera/core/processing/OpenGlRenderer;->init(Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo;

    .line 346
    .line 347
    .line 348
    invoke-virtual {p0, v3}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 349
    .line 350
    .line 351
    goto :goto_4

    .line 352
    :catch_1
    move-exception v0

    .line 353
    invoke-virtual {p0, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 354
    .line 355
    .line 356
    :goto_4
    return-void

    .line 357
    :pswitch_b
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 358
    .line 359
    check-cast v0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    .line 360
    .line 361
    iget-object v1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 362
    .line 363
    check-cast v1, Ljava/lang/Runnable;

    .line 364
    .line 365
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 366
    .line 367
    check-cast p0, Ljava/lang/Runnable;

    .line 368
    .line 369
    iget-boolean v0, v0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mIsReleased:Z

    .line 370
    .line 371
    if-eqz v0, :cond_5

    .line 372
    .line 373
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 374
    .line 375
    .line 376
    goto :goto_5

    .line 377
    :cond_5
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 378
    .line 379
    .line 380
    :goto_5
    return-void

    .line 381
    :pswitch_c
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 382
    .line 383
    check-cast v0, Ljava/util/ArrayList;

    .line 384
    .line 385
    iget-object v1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 386
    .line 387
    check-cast v1, Landroidx/lifecycle/Observer;

    .line 388
    .line 389
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 390
    .line 391
    check-cast p0, Ljava/lang/String;

    .line 392
    .line 393
    :try_start_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 398
    .line 399
    .line 400
    move-result v2

    .line 401
    if-eqz v2, :cond_7

    .line 402
    .line 403
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    move-object v4, v2

    .line 408
    check-cast v4, Landroidx/camera/core/impl/CameraInfoInternal;

    .line 409
    .line 410
    invoke-interface {v4}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraId()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v4

    .line 414
    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result v4

    .line 418
    if-eqz v4, :cond_6

    .line 419
    .line 420
    move-object v3, v2

    .line 421
    :cond_7
    check-cast v3, Landroidx/camera/core/impl/CameraInfoInternal;

    .line 422
    .line 423
    if-eqz v3, :cond_8

    .line 424
    .line 425
    invoke-interface {v3}, Landroidx/camera/core/CameraInfo;->getCameraState()Landroidx/lifecycle/LiveData;

    .line 426
    .line 427
    .line 428
    move-result-object p0

    .line 429
    if-eqz p0, :cond_8

    .line 430
    .line 431
    invoke-virtual {p0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 432
    .line 433
    .line 434
    :catch_2
    :cond_8
    return-void

    .line 435
    :pswitch_d
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 436
    .line 437
    check-cast v0, Ljava/lang/Throwable;

    .line 438
    .line 439
    iget-object v1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 440
    .line 441
    check-cast v1, Landroidx/camera/core/impl/AbstractCameraPresenceSource$ObserverWrapper;

    .line 442
    .line 443
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 444
    .line 445
    check-cast p0, Ljava/util/List;

    .line 446
    .line 447
    if-eqz v0, :cond_9

    .line 448
    .line 449
    iget-object p0, v1, Landroidx/camera/core/impl/AbstractCameraPresenceSource$ObserverWrapper;->mObserver:Landroidx/camera/core/impl/Observable$Observer;

    .line 450
    .line 451
    invoke-interface {p0, v0}, Landroidx/camera/core/impl/Observable$Observer;->onError(Ljava/lang/Throwable;)V

    .line 452
    .line 453
    .line 454
    goto :goto_6

    .line 455
    :cond_9
    iget-object v0, v1, Landroidx/camera/core/impl/AbstractCameraPresenceSource$ObserverWrapper;->mObserver:Landroidx/camera/core/impl/Observable$Observer;

    .line 456
    .line 457
    invoke-interface {v0, p0}, Landroidx/camera/core/impl/Observable$Observer;->onNewData(Ljava/lang/Object;)V

    .line 458
    .line 459
    .line 460
    :goto_6
    return-void

    .line 461
    :pswitch_e
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 462
    .line 463
    check-cast v0, Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 464
    .line 465
    iget-object v1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 466
    .line 467
    check-cast v1, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 468
    .line 469
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 470
    .line 471
    check-cast p0, Lokio/Path$Companion;

    .line 472
    .line 473
    invoke-static {v1}, Landroidx/camera/camera2/impl/CameraCallbackMap;->getCaptureConfigId(Landroidx/camera/camera2/pipe/RequestMetadata;)I

    .line 474
    .line 475
    .line 476
    move-result v1

    .line 477
    invoke-virtual {v0, v1, p0}, Landroidx/camera/core/impl/CameraCaptureCallback;->onCaptureFailed(ILokio/Path$Companion;)V

    .line 478
    .line 479
    .line 480
    return-void

    .line 481
    :pswitch_f
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 482
    .line 483
    check-cast v0, Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 484
    .line 485
    iget-object v1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 486
    .line 487
    check-cast v1, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 488
    .line 489
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 490
    .line 491
    check-cast p0, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;

    .line 492
    .line 493
    invoke-static {v1}, Landroidx/camera/camera2/impl/CameraCallbackMap;->getCaptureConfigId(Landroidx/camera/camera2/pipe/RequestMetadata;)I

    .line 494
    .line 495
    .line 496
    move-result v1

    .line 497
    invoke-virtual {v0, v1, p0}, Landroidx/camera/core/impl/CameraCaptureCallback;->onCaptureCompleted(ILandroidx/camera/core/impl/CameraCaptureResult;)V

    .line 498
    .line 499
    .line 500
    return-void

    .line 501
    :pswitch_10
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 502
    .line 503
    check-cast v0, Landroidx/work/impl/Processor;

    .line 504
    .line 505
    iget-object v1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 506
    .line 507
    check-cast v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 508
    .line 509
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 510
    .line 511
    check-cast p0, Landroidx/work/impl/WorkerWrapper;

    .line 512
    .line 513
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 514
    .line 515
    .line 516
    :try_start_4
    iget-object v1, v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->delegate:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;

    .line 517
    .line 518
    invoke-virtual {v1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->get()Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    check-cast v1, Ljava/lang/Boolean;

    .line 523
    .line 524
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 525
    .line 526
    .line 527
    move-result v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_3

    .line 528
    :catch_3
    const-string v1, "Processor "

    .line 529
    .line 530
    iget-object v3, v0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    .line 531
    .line 532
    monitor-enter v3

    .line 533
    :try_start_5
    iget-object v4, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 534
    .line 535
    invoke-static {v4}, Lorg/jsoup/helper/Validate;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    .line 536
    .line 537
    .line 538
    move-result-object v4

    .line 539
    iget-object v5, v4, Landroidx/work/impl/model/WorkGenerationalId;->workSpecId:Ljava/lang/String;

    .line 540
    .line 541
    invoke-virtual {v0, v5}, Landroidx/work/impl/Processor;->getWorkerWrapperUnsafe(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    .line 542
    .line 543
    .line 544
    move-result-object v6

    .line 545
    if-ne v6, p0, :cond_a

    .line 546
    .line 547
    invoke-virtual {v0, v5}, Landroidx/work/impl/Processor;->cleanUpWorkerUnsafe(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    .line 548
    .line 549
    .line 550
    goto :goto_7

    .line 551
    :catchall_1
    move-exception p0

    .line 552
    goto :goto_9

    .line 553
    :cond_a
    :goto_7
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 554
    .line 555
    .line 556
    move-result-object p0

    .line 557
    sget-object v6, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    .line 558
    .line 559
    new-instance v7, Ljava/lang/StringBuilder;

    .line 560
    .line 561
    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    const-string v1, " executed; reschedule = "

    .line 568
    .line 569
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v1

    .line 579
    invoke-virtual {p0, v6, v1}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    iget-object p0, v0, Landroidx/work/impl/Processor;->mOuterListeners:Ljava/util/ArrayList;

    .line 583
    .line 584
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 585
    .line 586
    .line 587
    move-result-object p0

    .line 588
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 589
    .line 590
    .line 591
    move-result v0

    .line 592
    if-eqz v0, :cond_b

    .line 593
    .line 594
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    check-cast v0, Landroidx/work/impl/ExecutionListener;

    .line 599
    .line 600
    invoke-interface {v0, v4, v2}, Landroidx/work/impl/ExecutionListener;->onExecuted(Landroidx/work/impl/model/WorkGenerationalId;Z)V

    .line 601
    .line 602
    .line 603
    goto :goto_8

    .line 604
    :cond_b
    monitor-exit v3

    .line 605
    return-void

    .line 606
    :goto_9
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 607
    throw p0

    .line 608
    nop

    .line 609
    :pswitch_data_0
    .packed-switch 0x0
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
