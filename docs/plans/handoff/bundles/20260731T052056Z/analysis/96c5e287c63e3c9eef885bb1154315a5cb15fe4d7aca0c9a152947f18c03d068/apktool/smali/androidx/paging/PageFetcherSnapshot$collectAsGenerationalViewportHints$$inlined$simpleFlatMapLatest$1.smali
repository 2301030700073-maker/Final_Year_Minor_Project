.class public final Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $loadType$inlined:Landroidx/paging/LoadType;

.field public I$0:I

.field public synthetic L$0:Lkotlinx/coroutines/flow/FlowCollector;

.field public synthetic L$1:Ljava/lang/Object;

.field public L$2:Lkotlinx/coroutines/sync/MutexImpl;

.field public label:I

.field public final synthetic this$0:Landroidx/paging/PageFetcherSnapshot;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Landroidx/paging/PageFetcherSnapshot;Landroidx/paging/LoadType;)V
    .locals 0

    .line 1
    iput-object p2, p0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1;->this$0:Landroidx/paging/PageFetcherSnapshot;

    .line 2
    .line 3
    iput-object p3, p0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1;->$loadType$inlined:Landroidx/paging/LoadType;

    .line 4
    .line 5
    const/4 p2, 0x3

    .line 6
    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    .line 3
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    new-instance v0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1;->this$0:Landroidx/paging/PageFetcherSnapshot;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1;->$loadType$inlined:Landroidx/paging/LoadType;

    .line 10
    .line 11
    invoke-direct {v0, p3, v1, p0}, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Landroidx/paging/PageFetcherSnapshot;Landroidx/paging/LoadType;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 15
    .line 16
    iput-object p2, v0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1;->$loadType$inlined:Landroidx/paging/LoadType;

    .line 2
    .line 3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    iget v2, p0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1;->label:I

    .line 6
    .line 7
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1;->this$0:Landroidx/paging/PageFetcherSnapshot;

    .line 10
    .line 11
    const/4 v5, 0x2

    .line 12
    const/4 v6, 0x1

    .line 13
    const/4 v7, 0x0

    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    if-eq v2, v6, :cond_1

    .line 17
    .line 18
    if-ne v2, v5, :cond_0

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto/16 :goto_6

    .line 24
    .line 25
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v7

    .line 31
    :cond_1
    iget v2, p0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1;->I$0:I

    .line 32
    .line 33
    iget-object v8, p0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1;->L$2:Lkotlinx/coroutines/sync/MutexImpl;

    .line 34
    .line 35
    iget-object v9, p0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v9, Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 38
    .line 39
    iget-object v10, p0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 40
    .line 41
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object v10, p0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 49
    .line 50
    iget-object p1, p0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p1, Ljava/lang/Number;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    iget-object v9, v4, Landroidx/paging/PageFetcherSnapshot;->stateHolder:Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 59
    .line 60
    iget-object v8, v9, Landroidx/paging/PageFetcherSnapshotState$Holder;->lock:Lkotlinx/coroutines/sync/MutexImpl;

    .line 61
    .line 62
    iput-object v10, p0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 63
    .line 64
    iput-object v9, p0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 65
    .line 66
    iput-object v8, p0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1;->L$2:Lkotlinx/coroutines/sync/MutexImpl;

    .line 67
    .line 68
    iput v2, p0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1;->I$0:I

    .line 69
    .line 70
    iput v6, p0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1;->label:I

    .line 71
    .line 72
    invoke-virtual {v8, p0}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-ne p1, v1, :cond_3

    .line 77
    .line 78
    goto/16 :goto_5

    .line 79
    .line 80
    :cond_3
    :goto_0
    :try_start_0
    iget-object p1, v9, Landroidx/paging/PageFetcherSnapshotState$Holder;->state:Landroidx/paging/PageFetcherSnapshotState;

    .line 81
    .line 82
    iget-object p1, p1, Landroidx/paging/PageFetcherSnapshotState;->sourceLoadStates:Lcom/caverock/androidsvg/SVG;

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lcom/caverock/androidsvg/SVG;->get(Landroidx/paging/LoadType;)Landroidx/paging/LoadState;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    sget-object v11, Landroidx/paging/LoadState$NotLoading;->Complete:Landroidx/paging/LoadState$NotLoading;

    .line 89
    .line 90
    invoke-virtual {v9, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    const/4 v11, 0x0

    .line 95
    if-eqz v9, :cond_4

    .line 96
    .line 97
    new-array p1, v11, [Landroidx/paging/GenerationalViewportHint;

    .line 98
    .line 99
    new-instance v0, Lkotlinx/coroutines/flow/SafeFlow;

    .line 100
    .line 101
    const/4 v2, 0x4

    .line 102
    invoke-direct {v0, v2, p1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .line 104
    .line 105
    invoke-interface {v8, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    goto :goto_7

    .line 111
    :cond_4
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/caverock/androidsvg/SVG;->get(Landroidx/paging/LoadType;)Landroidx/paging/LoadState;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    instance-of v9, v9, Landroidx/paging/LoadState$Error;

    .line 116
    .line 117
    if-nez v9, :cond_5

    .line 118
    .line 119
    sget-object v9, Landroidx/paging/LoadState$NotLoading;->Incomplete:Landroidx/paging/LoadState$NotLoading;

    .line 120
    .line 121
    invoke-virtual {p1, v0, v9}, Lcom/caverock/androidsvg/SVG;->set(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    .line 123
    .line 124
    :cond_5
    invoke-interface {v8, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    iget-object p1, v4, Landroidx/paging/PageFetcherSnapshot;->hintHandler:Landroidx/paging/HintHandler;

    .line 128
    .line 129
    iget-object p1, p1, Landroidx/paging/HintHandler;->state:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast p1, Lcoil3/ImageLoader$Builder;

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    sget-object v4, Landroidx/paging/HintHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    aget v0, v4, v0

    .line 143
    .line 144
    if-eq v0, v6, :cond_7

    .line 145
    .line 146
    if-ne v0, v5, :cond_6

    .line 147
    .line 148
    iget-object p1, p1, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast p1, Landroidx/paging/HintHandler$HintFlow;

    .line 151
    .line 152
    iget-object p1, p1, Landroidx/paging/HintHandler$HintFlow;->_flow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_6
    const-string p1, "invalid load type for hints"

    .line 156
    .line 157
    invoke-static {p1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    move-object p1, v7

    .line 161
    goto :goto_1

    .line 162
    :cond_7
    iget-object p1, p1, Lcoil3/ImageLoader$Builder;->application:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast p1, Landroidx/paging/HintHandler$HintFlow;

    .line 165
    .line 166
    iget-object p1, p1, Landroidx/paging/HintHandler$HintFlow;->_flow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 167
    .line 168
    :goto_1
    if-nez v2, :cond_8

    .line 169
    .line 170
    move v0, v11

    .line 171
    goto :goto_2

    .line 172
    :cond_8
    move v0, v6

    .line 173
    :goto_2
    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;

    .line 174
    .line 175
    invoke-direct {v4, p1, v0, v11}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;II)V

    .line 176
    .line 177
    .line 178
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;

    .line 179
    .line 180
    invoke-direct {v0, v4, v2, v6}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;II)V

    .line 181
    .line 182
    .line 183
    :goto_3
    iput-object v7, p0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 184
    .line 185
    iput-object v7, p0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 186
    .line 187
    iput-object v7, p0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1;->L$2:Lkotlinx/coroutines/sync/MutexImpl;

    .line 188
    .line 189
    iput v5, p0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1;->label:I

    .line 190
    .line 191
    instance-of p1, v10, Lkotlinx/coroutines/flow/ThrowingCollector;

    .line 192
    .line 193
    if-nez p1, :cond_b

    .line 194
    .line 195
    invoke-interface {v0, v10, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    if-ne p0, v1, :cond_9

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_9
    move-object p0, v3

    .line 203
    :goto_4
    if-ne p0, v1, :cond_a

    .line 204
    .line 205
    :goto_5
    return-object v1

    .line 206
    :cond_a
    :goto_6
    return-object v3

    .line 207
    :cond_b
    check-cast v10, Lkotlinx/coroutines/flow/ThrowingCollector;

    .line 208
    .line 209
    iget-object p0, v10, Lkotlinx/coroutines/flow/ThrowingCollector;->e:Ljava/lang/Throwable;

    .line 210
    .line 211
    throw p0

    .line 212
    :goto_7
    invoke-interface {v8, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    throw p0
.end method
