.class public final Landroidx/glance/session/SessionManagerImpl$scope$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final sessions:Ljava/util/LinkedHashMap;

.field public final synthetic this$0:Landroidx/glance/session/SessionManagerImpl;


# direct methods
.method public constructor <init>(Landroidx/glance/session/SessionManagerImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/glance/session/SessionManagerImpl$scope$1;->this$0:Landroidx/glance/session/SessionManagerImpl;

    .line 5
    .line 6
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/glance/session/SessionManagerImpl$scope$1;->sessions:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final isSessionRunning(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p3, Landroidx/glance/session/SessionManagerImpl$scope$1$isSessionRunning$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Landroidx/glance/session/SessionManagerImpl$scope$1$isSessionRunning$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/glance/session/SessionManagerImpl$scope$1$isSessionRunning$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/glance/session/SessionManagerImpl$scope$1$isSessionRunning$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/glance/session/SessionManagerImpl$scope$1$isSessionRunning$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Landroidx/glance/session/SessionManagerImpl$scope$1$isSessionRunning$1;-><init>(Landroidx/glance/session/SessionManagerImpl$scope$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Landroidx/glance/session/SessionManagerImpl$scope$1$isSessionRunning$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/glance/session/SessionManagerImpl$scope$1$isSessionRunning$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v4, :cond_1

    .line 36
    .line 37
    iget-object p2, v0, Landroidx/glance/session/SessionManagerImpl$scope$1$isSessionRunning$1;->L$1:Ljava/lang/String;

    .line 38
    .line 39
    iget-object p0, v0, Landroidx/glance/session/SessionManagerImpl$scope$1$isSessionRunning$1;->L$0:Landroidx/glance/session/SessionManagerImpl$scope$1;

    .line 40
    .line 41
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    return-object p0

    .line 52
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Landroidx/work/impl/WorkManagerImpl;->getInstance$1(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object p3, p1, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 63
    .line 64
    iget-object p1, p1, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 65
    .line 66
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    new-instance v2, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;

    .line 76
    .line 77
    const/16 v5, 0x18

    .line 78
    .line 79
    invoke-direct {v2, v5, p2}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p1, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/room/TransactionExecutor;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    new-instance v5, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    .line 88
    .line 89
    const/16 v6, 0x1d

    .line 90
    .line 91
    invoke-direct {v5, v6, v2, p3}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    new-instance p3, Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;

    .line 95
    .line 96
    const-string v2, "loadStatusFuture"

    .line 97
    .line 98
    invoke-direct {p3, p1, v2, v5, v3}, Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 99
    .line 100
    .line 101
    invoke-static {p3}, Landroidx/room/Room;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iput-object p0, v0, Landroidx/glance/session/SessionManagerImpl$scope$1$isSessionRunning$1;->L$0:Landroidx/glance/session/SessionManagerImpl$scope$1;

    .line 106
    .line 107
    iput-object p2, v0, Landroidx/glance/session/SessionManagerImpl$scope$1$isSessionRunning$1;->L$1:Ljava/lang/String;

    .line 108
    .line 109
    iput v4, v0, Landroidx/glance/session/SessionManagerImpl$scope$1$isSessionRunning$1;->label:I

    .line 110
    .line 111
    invoke-static {p1, v0}, Lkotlin/text/UStringsKt;->await(Lcom/google/common/util/concurrent/ListenableFuture;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p3

    .line 115
    if-ne p3, v1, :cond_3

    .line 116
    .line 117
    return-object v1

    .line 118
    :cond_3
    :goto_1
    check-cast p3, Ljava/lang/Iterable;

    .line 119
    .line 120
    instance-of p1, p3, Ljava/util/Collection;

    .line 121
    .line 122
    if-eqz p1, :cond_5

    .line 123
    .line 124
    move-object p1, p3

    .line 125
    check-cast p1, Ljava/util/Collection;

    .line 126
    .line 127
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_5

    .line 132
    .line 133
    :cond_4
    move p1, v3

    .line 134
    goto :goto_2

    .line 135
    :cond_5
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result p3

    .line 143
    if-eqz p3, :cond_4

    .line 144
    .line 145
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p3

    .line 149
    check-cast p3, Landroidx/work/WorkInfo;

    .line 150
    .line 151
    const/4 v0, 0x2

    .line 152
    new-array v0, v0, [Landroidx/work/WorkInfo$State;

    .line 153
    .line 154
    sget-object v1, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    .line 155
    .line 156
    aput-object v1, v0, v3

    .line 157
    .line 158
    sget-object v1, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    .line 159
    .line 160
    aput-object v1, v0, v4

    .line 161
    .line 162
    invoke-static {v0}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    iget-object p3, p3, Landroidx/work/WorkInfo;->state:Landroidx/work/WorkInfo$State;

    .line 167
    .line 168
    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result p3

    .line 172
    if-eqz p3, :cond_6

    .line 173
    .line 174
    move p1, v4

    .line 175
    :goto_2
    iget-object p0, p0, Landroidx/glance/session/SessionManagerImpl$scope$1;->sessions:Ljava/util/LinkedHashMap;

    .line 176
    .line 177
    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    check-cast p0, Landroidx/glance/appwidget/AppWidgetSession;

    .line 182
    .line 183
    if-eqz p0, :cond_7

    .line 184
    .line 185
    iget-object p0, p0, Landroidx/glance/appwidget/AppWidgetSession;->_isOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 186
    .line 187
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 188
    .line 189
    .line 190
    move-result p0

    .line 191
    goto :goto_3

    .line 192
    :cond_7
    move p0, v3

    .line 193
    :goto_3
    if-eqz p0, :cond_8

    .line 194
    .line 195
    if-eqz p1, :cond_8

    .line 196
    .line 197
    move v3, v4

    .line 198
    :cond_8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    return-object p0
.end method

.method public final startSession(Landroid/content/Context;Landroidx/glance/appwidget/AppWidgetSession;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    instance-of v3, v2, Landroidx/glance/session/SessionManagerImpl$scope$1$startSession$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Landroidx/glance/session/SessionManagerImpl$scope$1$startSession$1;

    .line 13
    .line 14
    iget v4, v3, Landroidx/glance/session/SessionManagerImpl$scope$1$startSession$1;->label:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Landroidx/glance/session/SessionManagerImpl$scope$1$startSession$1;->label:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Landroidx/glance/session/SessionManagerImpl$scope$1$startSession$1;

    .line 27
    .line 28
    invoke-direct {v3, v0, v2}, Landroidx/glance/session/SessionManagerImpl$scope$1$startSession$1;-><init>(Landroidx/glance/session/SessionManagerImpl$scope$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, v3, Landroidx/glance/session/SessionManagerImpl$scope$1$startSession$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 34
    .line 35
    iget v5, v3, Landroidx/glance/session/SessionManagerImpl$scope$1$startSession$1;->label:I

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    const-class v7, Landroidx/glance/session/SessionWorker;

    .line 39
    .line 40
    const/4 v8, 0x1

    .line 41
    if-eqz v5, :cond_2

    .line 42
    .line 43
    if-ne v5, v8, :cond_1

    .line 44
    .line 45
    iget-object v0, v3, Landroidx/glance/session/SessionManagerImpl$scope$1$startSession$1;->L$1:Landroid/content/Context;

    .line 46
    .line 47
    iget-object v1, v3, Landroidx/glance/session/SessionManagerImpl$scope$1$startSession$1;->L$0:Landroidx/glance/session/SessionManagerImpl$scope$1;

    .line 48
    .line 49
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    move-object v2, v0

    .line 53
    move-object v0, v1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object v6

    .line 61
    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object v2, v1, Landroidx/glance/appwidget/AppWidgetSession;->key:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v5, v0, Landroidx/glance/session/SessionManagerImpl$scope$1;->sessions:Ljava/util/LinkedHashMap;

    .line 67
    .line 68
    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Landroidx/glance/appwidget/AppWidgetSession;

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    iget-object v9, v1, Landroidx/glance/appwidget/AppWidgetSession;->eventChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 78
    .line 79
    invoke-virtual {v9, v6}, Lkotlinx/coroutines/channels/BufferedChannel;->close(Ljava/lang/Throwable;)Z

    .line 80
    .line 81
    .line 82
    iget-object v9, v1, Landroidx/glance/appwidget/AppWidgetSession;->_isOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    .line 84
    invoke-virtual {v9, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 85
    .line 86
    .line 87
    iget-object v1, v1, Landroidx/glance/appwidget/AppWidgetSession;->parentJob:Lkotlinx/coroutines/JobImpl;

    .line 88
    .line 89
    invoke-virtual {v1, v6}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    new-instance v1, Landroidx/compose/runtime/Latch;

    .line 93
    .line 94
    invoke-direct {v1, v7}, Landroidx/compose/runtime/Latch;-><init>(Ljava/lang/Class;)V

    .line 95
    .line 96
    .line 97
    new-instance v9, Lkotlin/Pair;

    .line 98
    .line 99
    const-string v10, "KEY"

    .line 100
    .line 101
    invoke-direct {v9, v10, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    new-array v10, v8, [Lkotlin/Pair;

    .line 105
    .line 106
    aput-object v9, v10, v5

    .line 107
    .line 108
    new-instance v9, Landroidx/work/Data$Builder;

    .line 109
    .line 110
    invoke-direct {v9}, Landroidx/work/Data$Builder;-><init>()V

    .line 111
    .line 112
    .line 113
    aget-object v5, v10, v5

    .line 114
    .line 115
    iget-object v10, v5, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v10, Ljava/lang/String;

    .line 118
    .line 119
    iget-object v5, v5, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 120
    .line 121
    invoke-virtual {v9, v10, v5}, Landroidx/work/Data$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v9}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    iget-object v9, v1, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v9, Landroidx/work/impl/model/WorkSpec;

    .line 131
    .line 132
    iput-object v5, v9, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 133
    .line 134
    invoke-virtual {v1}, Landroidx/compose/runtime/Latch;->build()Landroidx/work/OneTimeWorkRequest;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    invoke-static/range {p1 .. p1}, Landroidx/work/impl/WorkManagerImpl;->getInstance$1(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    sget-object v9, Landroidx/work/ExistingWorkPolicy;->REPLACE:Landroidx/work/ExistingWorkPolicy;

    .line 146
    .line 147
    invoke-virtual {v5, v2, v9, v1}, Landroidx/work/impl/WorkManagerImpl;->enqueueUniqueWork(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Landroidx/work/OneTimeWorkRequest;)Landroidx/work/Data$Builder;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    iget-object v1, v1, Landroidx/work/Data$Builder;->values:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 154
    .line 155
    iput-object v0, v3, Landroidx/glance/session/SessionManagerImpl$scope$1$startSession$1;->L$0:Landroidx/glance/session/SessionManagerImpl$scope$1;

    .line 156
    .line 157
    move-object/from16 v2, p1

    .line 158
    .line 159
    iput-object v2, v3, Landroidx/glance/session/SessionManagerImpl$scope$1$startSession$1;->L$1:Landroid/content/Context;

    .line 160
    .line 161
    iput v8, v3, Landroidx/glance/session/SessionManagerImpl$scope$1$startSession$1;->label:I

    .line 162
    .line 163
    invoke-static {v1, v3}, Lkotlin/text/UStringsKt;->await(Lcom/google/common/util/concurrent/ListenableFuture;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    if-ne v1, v4, :cond_4

    .line 168
    .line 169
    return-object v4

    .line 170
    :cond_4
    :goto_1
    iget-object v0, v0, Landroidx/glance/session/SessionManagerImpl$scope$1;->this$0:Landroidx/glance/session/SessionManagerImpl;

    .line 171
    .line 172
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    invoke-static {v2}, Landroidx/work/impl/WorkManagerImpl;->getInstance$1(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    sget-object v1, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    .line 180
    .line 181
    new-instance v2, Landroidx/compose/runtime/Latch;

    .line 182
    .line 183
    invoke-direct {v2, v7}, Landroidx/compose/runtime/Latch;-><init>(Ljava/lang/Class;)V

    .line 184
    .line 185
    .line 186
    const-wide/16 v3, 0xe42

    .line 187
    .line 188
    sget-object v5, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 189
    .line 190
    invoke-virtual {v2, v3, v4, v5}, Landroidx/compose/runtime/Latch;->setInitialDelay(JLjava/util/concurrent/TimeUnit;)V

    .line 191
    .line 192
    .line 193
    new-instance v8, Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 194
    .line 195
    invoke-direct {v8, v6}, Landroidx/work/impl/utils/NetworkRequestCompat;-><init>(Landroid/net/NetworkRequest;)V

    .line 196
    .line 197
    .line 198
    sget-object v9, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    .line 199
    .line 200
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 201
    .line 202
    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 203
    .line 204
    .line 205
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 206
    .line 207
    const/16 v5, 0x18

    .line 208
    .line 209
    if-lt v4, v5, :cond_5

    .line 210
    .line 211
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    :goto_2
    move-object/from16 v18, v3

    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_5
    sget-object v3, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :goto_3
    new-instance v7, Landroidx/work/Constraints;

    .line 222
    .line 223
    const/4 v10, 0x1

    .line 224
    const/4 v11, 0x0

    .line 225
    const/4 v12, 0x0

    .line 226
    const/4 v13, 0x0

    .line 227
    const-wide/16 v14, -0x1

    .line 228
    .line 229
    move-wide/from16 v16, v14

    .line 230
    .line 231
    invoke-direct/range {v7 .. v18}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 232
    .line 233
    .line 234
    iget-object v3, v2, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast v3, Landroidx/work/impl/model/WorkSpec;

    .line 237
    .line 238
    iput-object v7, v3, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 239
    .line 240
    invoke-virtual {v2}, Landroidx/compose/runtime/Latch;->build()Landroidx/work/OneTimeWorkRequest;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    const-string v3, "sessionWorkerKeepEnabled"

    .line 245
    .line 246
    invoke-virtual {v0, v3, v1, v2}, Landroidx/work/impl/WorkManagerImpl;->enqueueUniqueWork(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Landroidx/work/OneTimeWorkRequest;)Landroidx/work/Data$Builder;

    .line 247
    .line 248
    .line 249
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 250
    .line 251
    return-object v0
.end method
