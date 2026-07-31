.class public final Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public L$0:Landroidx/paging/PageFetcherSnapshotState$Holder;

.field public L$1:Lkotlinx/coroutines/sync/MutexImpl;

.field public L$2:Landroidx/paging/PageFetcherSnapshot;

.field public label:I

.field public final synthetic this$0:Landroidx/paging/PageFetcherSnapshot;


# direct methods
.method public synthetic constructor <init>(Landroidx/paging/PageFetcherSnapshot;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->this$0:Landroidx/paging/PageFetcherSnapshot;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    iget p1, p0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->this$0:Landroidx/paging/PageFetcherSnapshot;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p1, p0, p2, v0}, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;-><init>(Landroidx/paging/PageFetcherSnapshot;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p1, p0, p2, v0}, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;-><init>(Landroidx/paging/PageFetcherSnapshot;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->this$0:Landroidx/paging/PageFetcherSnapshot;

    .line 6
    .line 7
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 16
    .line 17
    iget v7, p0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->label:I

    .line 18
    .line 19
    if-eqz v7, :cond_2

    .line 20
    .line 21
    if-eq v7, v5, :cond_1

    .line 22
    .line 23
    if-ne v7, v4, :cond_0

    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_0
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    move-object v1, v6

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    iget-object v2, p0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->L$2:Landroidx/paging/PageFetcherSnapshot;

    .line 35
    .line 36
    iget-object v3, p0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->L$1:Lkotlinx/coroutines/sync/MutexImpl;

    .line 37
    .line 38
    iget-object v5, p0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->L$0:Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, v2, Landroidx/paging/PageFetcherSnapshot;->stateHolder:Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 48
    .line 49
    iget-object v3, p1, Landroidx/paging/PageFetcherSnapshotState$Holder;->lock:Lkotlinx/coroutines/sync/MutexImpl;

    .line 50
    .line 51
    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->L$0:Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 52
    .line 53
    iput-object v3, p0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->L$1:Lkotlinx/coroutines/sync/MutexImpl;

    .line 54
    .line 55
    iput-object v2, p0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->L$2:Landroidx/paging/PageFetcherSnapshot;

    .line 56
    .line 57
    iput v5, p0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->label:I

    .line 58
    .line 59
    invoke-virtual {v3, p0}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    if-ne v5, v0, :cond_3

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    move-object v5, p1

    .line 67
    :goto_0
    :try_start_0
    iget-object p1, v5, Landroidx/paging/PageFetcherSnapshotState$Holder;->state:Landroidx/paging/PageFetcherSnapshotState;

    .line 68
    .line 69
    iget-object v5, p1, Landroidx/paging/PageFetcherSnapshotState;->appendGenerationIdCh:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 70
    .line 71
    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->consumeAsFlow(Lkotlinx/coroutines/channels/BufferedChannel;)Lkotlinx/coroutines/flow/ChannelAsFlow;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    new-instance v7, Landroidx/paging/PageFetcherSnapshotState$consumeAppendGenerationIdAsFlow$1;

    .line 76
    .line 77
    const/4 v8, 0x0

    .line 78
    invoke-direct {v7, p1, v6, v8}, Landroidx/paging/PageFetcherSnapshotState$consumeAppendGenerationIdAsFlow$1;-><init>(Landroidx/paging/PageFetcherSnapshotState;Lkotlin/coroutines/Continuation;I)V

    .line 79
    .line 80
    .line 81
    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    .line 82
    .line 83
    invoke-direct {p1, v7, v5}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    .line 86
    invoke-interface {v3, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    sget-object v3, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    .line 90
    .line 91
    iput-object v6, p0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->L$0:Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 92
    .line 93
    iput-object v6, p0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->L$1:Lkotlinx/coroutines/sync/MutexImpl;

    .line 94
    .line 95
    iput-object v6, p0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->L$2:Landroidx/paging/PageFetcherSnapshot;

    .line 96
    .line 97
    iput v4, p0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->label:I

    .line 98
    .line 99
    invoke-virtual {v2, p1, v3, p0}, Landroidx/paging/PageFetcherSnapshot;->collectAsGenerationalViewportHints(Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;Landroidx/paging/LoadType;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    if-ne p0, v0, :cond_4

    .line 104
    .line 105
    :goto_1
    move-object v1, v0

    .line 106
    :cond_4
    :goto_2
    return-object v1

    .line 107
    :catchall_0
    move-exception p0

    .line 108
    invoke-interface {v3, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    throw p0

    .line 112
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 113
    .line 114
    iget v7, p0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->label:I

    .line 115
    .line 116
    if-eqz v7, :cond_7

    .line 117
    .line 118
    if-eq v7, v5, :cond_6

    .line 119
    .line 120
    if-ne v7, v4, :cond_5

    .line 121
    .line 122
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_5
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    move-object v1, v6

    .line 130
    goto :goto_5

    .line 131
    :cond_6
    iget-object v2, p0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->L$2:Landroidx/paging/PageFetcherSnapshot;

    .line 132
    .line 133
    iget-object v3, p0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->L$1:Lkotlinx/coroutines/sync/MutexImpl;

    .line 134
    .line 135
    iget-object v7, p0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->L$0:Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 136
    .line 137
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    iget-object v7, v2, Landroidx/paging/PageFetcherSnapshot;->stateHolder:Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 145
    .line 146
    iget-object v3, v7, Landroidx/paging/PageFetcherSnapshotState$Holder;->lock:Lkotlinx/coroutines/sync/MutexImpl;

    .line 147
    .line 148
    iput-object v7, p0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->L$0:Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 149
    .line 150
    iput-object v3, p0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->L$1:Lkotlinx/coroutines/sync/MutexImpl;

    .line 151
    .line 152
    iput-object v2, p0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->L$2:Landroidx/paging/PageFetcherSnapshot;

    .line 153
    .line 154
    iput v5, p0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->label:I

    .line 155
    .line 156
    invoke-virtual {v3, p0}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    if-ne p1, v0, :cond_8

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_8
    :goto_3
    :try_start_1
    iget-object p1, v7, Landroidx/paging/PageFetcherSnapshotState$Holder;->state:Landroidx/paging/PageFetcherSnapshotState;

    .line 164
    .line 165
    iget-object v7, p1, Landroidx/paging/PageFetcherSnapshotState;->prependGenerationIdCh:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 166
    .line 167
    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->consumeAsFlow(Lkotlinx/coroutines/channels/BufferedChannel;)Lkotlinx/coroutines/flow/ChannelAsFlow;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    new-instance v8, Landroidx/paging/PageFetcherSnapshotState$consumeAppendGenerationIdAsFlow$1;

    .line 172
    .line 173
    invoke-direct {v8, p1, v6, v5}, Landroidx/paging/PageFetcherSnapshotState$consumeAppendGenerationIdAsFlow$1;-><init>(Landroidx/paging/PageFetcherSnapshotState;Lkotlin/coroutines/Continuation;I)V

    .line 174
    .line 175
    .line 176
    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    .line 177
    .line 178
    invoke-direct {p1, v8, v7}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 179
    .line 180
    .line 181
    invoke-interface {v3, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    sget-object v3, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    .line 185
    .line 186
    iput-object v6, p0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->L$0:Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 187
    .line 188
    iput-object v6, p0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->L$1:Lkotlinx/coroutines/sync/MutexImpl;

    .line 189
    .line 190
    iput-object v6, p0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->L$2:Landroidx/paging/PageFetcherSnapshot;

    .line 191
    .line 192
    iput v4, p0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;->label:I

    .line 193
    .line 194
    invoke-virtual {v2, p1, v3, p0}, Landroidx/paging/PageFetcherSnapshot;->collectAsGenerationalViewportHints(Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;Landroidx/paging/LoadType;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    if-ne p0, v0, :cond_9

    .line 199
    .line 200
    :goto_4
    move-object v1, v0

    .line 201
    :cond_9
    :goto_5
    return-object v1

    .line 202
    :catchall_1
    move-exception p0

    .line 203
    invoke-interface {v3, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    throw p0

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
