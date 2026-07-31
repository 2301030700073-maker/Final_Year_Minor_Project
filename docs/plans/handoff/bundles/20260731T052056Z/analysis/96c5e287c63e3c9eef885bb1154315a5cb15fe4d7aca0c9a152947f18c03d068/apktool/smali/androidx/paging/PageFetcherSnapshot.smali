.class public final Landroidx/paging/PageFetcherSnapshot;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final config:Landroidx/paging/PagingConfig;

.field public final hintHandler:Landroidx/paging/HintHandler;

.field public final initialKey:Ljava/lang/Object;

.field public final initialLoadSize:I

.field public final pageEventCh:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final pageEventChCollected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final pageEventChannelFlowJob:Lkotlinx/coroutines/JobImpl;

.field public final pageEventFlow:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

.field public final pagingSource:Landroidx/paging/PagingSource;

.field public final retryFlow:Landroidx/paging/ConflatedEventBus$special$$inlined$mapNotNull$1;

.field public final stateHolder:Landroidx/paging/PageFetcherSnapshotState$Holder;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/paging/PagingSource;Landroidx/paging/PagingConfig;Landroidx/paging/ConflatedEventBus$special$$inlined$mapNotNull$1;ILandroidx/paging/PagingState;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshot;->initialKey:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/paging/PageFetcherSnapshot;->pagingSource:Landroidx/paging/PagingSource;

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/paging/PageFetcherSnapshot;->config:Landroidx/paging/PagingConfig;

    .line 12
    .line 13
    iput-object p4, p0, Landroidx/paging/PageFetcherSnapshot;->retryFlow:Landroidx/paging/ConflatedEventBus$special$$inlined$mapNotNull$1;

    .line 14
    .line 15
    iput p5, p0, Landroidx/paging/PageFetcherSnapshot;->initialLoadSize:I

    .line 16
    .line 17
    new-instance p1, Landroidx/paging/HintHandler;

    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    invoke-direct {p1, p2}, Landroidx/paging/HintHandler;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshot;->hintHandler:Landroidx/paging/HintHandler;

    .line 24
    .line 25
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshot;->pageEventChCollected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    const/4 p1, -0x2

    .line 33
    const/4 p2, 0x6

    .line 34
    const/4 p4, 0x0

    .line 35
    invoke-static {p1, p2, p4}, Landroidx/compose/ui/unit/DpKt;->Channel$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshot;->pageEventCh:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 40
    .line 41
    new-instance p1, Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 42
    .line 43
    invoke-direct {p1, p3}, Landroidx/paging/PageFetcherSnapshotState$Holder;-><init>(Landroidx/paging/PagingConfig;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshot;->stateHolder:Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 47
    .line 48
    invoke-static {}, Lkotlinx/coroutines/AwaitKt;->Job$default()Lkotlinx/coroutines/JobImpl;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshot;->pageEventChannelFlowJob:Lkotlinx/coroutines/JobImpl;

    .line 53
    .line 54
    new-instance p2, Landroidx/paging/FlowExtKt$simpleScan$1;

    .line 55
    .line 56
    const/16 p3, 0x13

    .line 57
    .line 58
    invoke-direct {p2, p3, p0, p4}, Landroidx/paging/FlowExtKt$simpleScan$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 59
    .line 60
    .line 61
    new-instance p3, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 62
    .line 63
    const/16 p5, 0x19

    .line 64
    .line 65
    invoke-direct {p3, p1, p2, p4, p5}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 66
    .line 67
    .line 68
    invoke-static {p3}, Landroidx/paging/FlowExtKt;->simpleChannelFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance p2, Landroidx/paging/FlowExtKt$simpleScan$1;

    .line 73
    .line 74
    const/16 p3, 0x14

    .line 75
    .line 76
    invoke-direct {p2, p3, p0, p4}, Landroidx/paging/FlowExtKt$simpleScan$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 77
    .line 78
    .line 79
    new-instance p3, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    .line 80
    .line 81
    invoke-direct {p3, p2, p1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    .line 82
    .line 83
    .line 84
    iput-object p3, p0, Landroidx/paging/PageFetcherSnapshot;->pageEventFlow:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    .line 85
    .line 86
    return-void
.end method

.method public static loadResultLog(Landroidx/paging/LoadType;Ljava/lang/Object;Landroidx/paging/PagingSource$LoadResult;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "End "

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, " with loadkey "

    .line 14
    .line 15
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p0, ". Load CANCELLED."

    .line 22
    .line 23
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p0, " with loadKey "

    .line 40
    .line 41
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p0, ". Returned "

    .line 48
    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method


# virtual methods
.method public final collectAsGenerationalViewportHints(Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;Landroidx/paging/LoadType;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p0, p2}, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Landroidx/paging/PageFetcherSnapshot;Landroidx/paging/LoadType;)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Landroidx/paging/FlowExtKt$simpleRunningReduce$1;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-direct {v2, p1, v0, v1, v3}, Landroidx/paging/FlowExtKt$simpleRunningReduce$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v2}, Landroidx/paging/FlowExtKt;->simpleChannelFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$3;

    .line 18
    .line 19
    invoke-direct {v0, p2, v1}, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$3;-><init>(Landroidx/paging/LoadType;Lkotlin/coroutines/Continuation;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v2, Landroidx/paging/FlowExtKt$simpleRunningReduce$1;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-direct {v2, p1, v0, v1, v3}, Landroidx/paging/FlowExtKt$simpleRunningReduce$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;I)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Lkotlinx/coroutines/flow/SafeFlow;

    .line 32
    .line 33
    invoke-direct {p1, v3, v2}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, -0x1

    .line 37
    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/StateFlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance v0, Landroidx/compose/material3/ThumbNode$onAttach$1$1;

    .line 42
    .line 43
    const/16 v1, 0x8

    .line 44
    .line 45
    invoke-direct {v0, v1, p0, p2}, Landroidx/compose/material3/ThumbNode$onAttach$1$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0, p3}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 53
    .line 54
    if-ne p0, p1, :cond_0

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 58
    .line 59
    return-object p0
.end method

.method public final currentPagingState(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p1, Landroidx/paging/PageFetcherSnapshot$currentPagingState$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/paging/PageFetcherSnapshot$currentPagingState$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/paging/PageFetcherSnapshot$currentPagingState$1;->label:I

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
    iput v1, v0, Landroidx/paging/PageFetcherSnapshot$currentPagingState$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/paging/PageFetcherSnapshot$currentPagingState$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/paging/PageFetcherSnapshot$currentPagingState$1;-><init>(Landroidx/paging/PageFetcherSnapshot;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/paging/PageFetcherSnapshot$currentPagingState$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/paging/PageFetcherSnapshot$currentPagingState$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v3, :cond_1

    .line 36
    .line 37
    iget-object v1, v0, Landroidx/paging/PageFetcherSnapshot$currentPagingState$1;->L$1:Lkotlinx/coroutines/sync/MutexImpl;

    .line 38
    .line 39
    iget-object v0, v0, Landroidx/paging/PageFetcherSnapshot$currentPagingState$1;->L$0:Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 40
    .line 41
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

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
    return-object v4

    .line 51
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Landroidx/paging/PageFetcherSnapshot;->stateHolder:Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 55
    .line 56
    iget-object v2, p1, Landroidx/paging/PageFetcherSnapshotState$Holder;->lock:Lkotlinx/coroutines/sync/MutexImpl;

    .line 57
    .line 58
    iput-object p1, v0, Landroidx/paging/PageFetcherSnapshot$currentPagingState$1;->L$0:Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 59
    .line 60
    iput-object v2, v0, Landroidx/paging/PageFetcherSnapshot$currentPagingState$1;->L$1:Lkotlinx/coroutines/sync/MutexImpl;

    .line 61
    .line 62
    iput v3, v0, Landroidx/paging/PageFetcherSnapshot$currentPagingState$1;->label:I

    .line 63
    .line 64
    invoke-virtual {v2, v0}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-ne v0, v1, :cond_3

    .line 69
    .line 70
    return-object v1

    .line 71
    :cond_3
    move-object v0, p1

    .line 72
    move-object v1, v2

    .line 73
    :goto_1
    :try_start_0
    iget-object p1, v0, Landroidx/paging/PageFetcherSnapshotState$Holder;->state:Landroidx/paging/PageFetcherSnapshotState;

    .line 74
    .line 75
    iget-object p0, p0, Landroidx/paging/PageFetcherSnapshot;->hintHandler:Landroidx/paging/HintHandler;

    .line 76
    .line 77
    iget-object p0, p0, Landroidx/paging/HintHandler;->state:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast p0, Lcoil3/ImageLoader$Builder;

    .line 80
    .line 81
    iget-object p0, p0, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p0, Landroidx/paging/ViewportHint$Access;

    .line 84
    .line 85
    invoke-virtual {p1, p0}, Landroidx/paging/PageFetcherSnapshotState;->currentPagingState$paging_common(Landroidx/paging/ViewportHint$Access;)Landroidx/paging/PagingState;

    .line 86
    .line 87
    .line 88
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    return-object p0

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    throw p0
.end method

.method public final doInitialLoad(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    instance-of v2, v1, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;

    .line 11
    .line 12
    iget v3, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;-><init>(Landroidx/paging/PageFetcherSnapshot;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 32
    .line 33
    iget v4, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->label:I

    .line 34
    .line 35
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 36
    .line 37
    const/4 v6, 0x3

    .line 38
    const/4 v7, 0x2

    .line 39
    iget-object v8, v0, Landroidx/paging/PageFetcherSnapshot;->stateHolder:Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 40
    .line 41
    iget-object v9, v0, Landroidx/paging/PageFetcherSnapshot;->initialKey:Ljava/lang/Object;

    .line 42
    .line 43
    const-string v10, "Paging"

    .line 44
    .line 45
    const/4 v11, 0x0

    .line 46
    packed-switch v4, :pswitch_data_0

    .line 47
    .line 48
    .line 49
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v11

    .line 55
    :pswitch_0
    iget-object v0, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$0:Ljava/lang/Object;

    .line 56
    .line 57
    move-object v2, v0

    .line 58
    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    .line 59
    .line 60
    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    goto/16 :goto_c

    .line 64
    .line 65
    :catchall_0
    move-exception v0

    .line 66
    goto/16 :goto_d

    .line 67
    .line 68
    :pswitch_1
    iget-object v4, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$2:Lkotlinx/coroutines/sync/MutexImpl;

    .line 69
    .line 70
    iget-object v6, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$1:Ljava/lang/Object;

    .line 71
    .line 72
    move-object v8, v6

    .line 73
    check-cast v8, Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 74
    .line 75
    iget-object v6, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$0:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v6, Landroidx/paging/PagingSource$LoadResult;

    .line 78
    .line 79
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_a

    .line 83
    .line 84
    :pswitch_2
    iget-object v3, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$2:Lkotlinx/coroutines/sync/MutexImpl;

    .line 85
    .line 86
    iget-object v4, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$1:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v4, Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 89
    .line 90
    iget-object v2, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$0:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v2, Landroidx/paging/PagingSource$LoadResult;

    .line 93
    .line 94
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :try_start_1
    iget-object v1, v4, Landroidx/paging/PageFetcherSnapshotState$Holder;->state:Landroidx/paging/PageFetcherSnapshotState;

    .line 98
    .line 99
    iget-object v0, v0, Landroidx/paging/PageFetcherSnapshot;->hintHandler:Landroidx/paging/HintHandler;

    .line 100
    .line 101
    iget-object v0, v0, Landroidx/paging/HintHandler;->state:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v0, Lcoil3/ImageLoader$Builder;

    .line 104
    .line 105
    iget-object v0, v0, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v0, Landroidx/paging/ViewportHint$Access;

    .line 108
    .line 109
    invoke-virtual {v1, v0}, Landroidx/paging/PageFetcherSnapshotState;->currentPagingState$paging_common(Landroidx/paging/ViewportHint$Access;)Landroidx/paging/PagingState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    .line 111
    .line 112
    invoke-interface {v3, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    check-cast v2, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    throw v11

    .line 121
    :catchall_1
    move-exception v0

    .line 122
    invoke-interface {v3, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    throw v0

    .line 126
    :pswitch_3
    iget-object v0, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$1:Ljava/lang/Object;

    .line 127
    .line 128
    move-object v3, v0

    .line 129
    check-cast v3, Lkotlinx/coroutines/sync/Mutex;

    .line 130
    .line 131
    iget-object v0, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$0:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v0, Landroidx/paging/PagingSource$LoadResult;

    .line 134
    .line 135
    :try_start_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 136
    .line 137
    .line 138
    goto/16 :goto_7

    .line 139
    .line 140
    :catchall_2
    move-exception v0

    .line 141
    goto/16 :goto_8

    .line 142
    .line 143
    :pswitch_4
    iget-object v4, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$2:Lkotlinx/coroutines/sync/MutexImpl;

    .line 144
    .line 145
    iget-object v6, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$1:Ljava/lang/Object;

    .line 146
    .line 147
    move-object v8, v6

    .line 148
    check-cast v8, Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 149
    .line 150
    iget-object v6, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$0:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v6, Landroidx/paging/PagingSource$LoadResult;

    .line 153
    .line 154
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_6

    .line 158
    .line 159
    :pswitch_5
    iget-object v4, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$2:Lkotlinx/coroutines/sync/MutexImpl;

    .line 160
    .line 161
    iget-object v12, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$1:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v12, Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 164
    .line 165
    iget-object v13, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$0:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v13, Landroidx/paging/PagingSource$LoadResult;

    .line 168
    .line 169
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    move-object v1, v13

    .line 173
    goto/16 :goto_4

    .line 174
    .line 175
    :pswitch_6
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    goto/16 :goto_3

    .line 179
    .line 180
    :pswitch_7
    iget-object v4, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$0:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    .line 183
    .line 184
    :try_start_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :catchall_3
    move-exception v0

    .line 189
    goto/16 :goto_e

    .line 190
    .line 191
    :pswitch_8
    iget-object v4, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$1:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    .line 194
    .line 195
    iget-object v12, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$0:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast v12, Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 198
    .line 199
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :pswitch_9
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    iget-object v1, v8, Landroidx/paging/PageFetcherSnapshotState$Holder;->lock:Lkotlinx/coroutines/sync/MutexImpl;

    .line 207
    .line 208
    iput-object v8, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$0:Ljava/lang/Object;

    .line 209
    .line 210
    iput-object v1, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$1:Ljava/lang/Object;

    .line 211
    .line 212
    const/4 v4, 0x1

    .line 213
    iput v4, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->label:I

    .line 214
    .line 215
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    if-ne v4, v3, :cond_1

    .line 220
    .line 221
    goto/16 :goto_b

    .line 222
    .line 223
    :cond_1
    move-object v4, v1

    .line 224
    move-object v12, v8

    .line 225
    :goto_1
    :try_start_4
    iget-object v1, v12, Landroidx/paging/PageFetcherSnapshotState$Holder;->state:Landroidx/paging/PageFetcherSnapshotState;

    .line 226
    .line 227
    sget-object v12, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    .line 228
    .line 229
    iput-object v4, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$0:Ljava/lang/Object;

    .line 230
    .line 231
    iput-object v11, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$1:Ljava/lang/Object;

    .line 232
    .line 233
    iput v7, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->label:I

    .line 234
    .line 235
    invoke-virtual {v0, v1, v12, v2}, Landroidx/paging/PageFetcherSnapshot;->setLoading(Landroidx/paging/PageFetcherSnapshotState;Landroidx/paging/LoadType;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 239
    if-ne v1, v3, :cond_2

    .line 240
    .line 241
    goto/16 :goto_b

    .line 242
    .line 243
    :cond_2
    :goto_2
    invoke-interface {v4, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    sget-object v1, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    .line 247
    .line 248
    invoke-virtual {v0, v1, v9}, Landroidx/paging/PageFetcherSnapshot;->loadParams(Landroidx/paging/LoadType;Ljava/lang/Object;)Landroidx/paging/PagingSource$LoadParams;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 253
    .line 254
    iget-object v12, v0, Landroidx/paging/PageFetcherSnapshot;->pagingSource:Landroidx/paging/PagingSource;

    .line 255
    .line 256
    if-eqz v4, :cond_3

    .line 257
    .line 258
    invoke-static {v10, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 259
    .line 260
    .line 261
    move-result v4

    .line 262
    if-eqz v4, :cond_3

    .line 263
    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    const-string v13, "Start REFRESH with loadKey "

    .line 267
    .line 268
    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const-string v13, " on "

    .line 275
    .line 276
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    invoke-static {v10, v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    .line 288
    .line 289
    :cond_3
    iput-object v11, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$0:Ljava/lang/Object;

    .line 290
    .line 291
    iput v6, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->label:I

    .line 292
    .line 293
    invoke-virtual {v12, v1, v2}, Landroidx/paging/PagingSource;->load(Landroidx/paging/PagingSource$LoadParams;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    if-ne v1, v3, :cond_4

    .line 298
    .line 299
    goto/16 :goto_b

    .line 300
    .line 301
    :cond_4
    :goto_3
    check-cast v1, Landroidx/paging/PagingSource$LoadResult;

    .line 302
    .line 303
    instance-of v4, v1, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 304
    .line 305
    if-eqz v4, :cond_c

    .line 306
    .line 307
    iget-object v4, v8, Landroidx/paging/PageFetcherSnapshotState$Holder;->lock:Lkotlinx/coroutines/sync/MutexImpl;

    .line 308
    .line 309
    iput-object v1, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$0:Ljava/lang/Object;

    .line 310
    .line 311
    iput-object v8, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$1:Ljava/lang/Object;

    .line 312
    .line 313
    iput-object v4, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$2:Lkotlinx/coroutines/sync/MutexImpl;

    .line 314
    .line 315
    const/4 v12, 0x4

    .line 316
    iput v12, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->label:I

    .line 317
    .line 318
    invoke-virtual {v4, v2}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v12

    .line 322
    if-ne v12, v3, :cond_5

    .line 323
    .line 324
    goto/16 :goto_b

    .line 325
    .line 326
    :cond_5
    move-object v12, v8

    .line 327
    :goto_4
    :try_start_5
    iget-object v12, v12, Landroidx/paging/PageFetcherSnapshotState$Holder;->state:Landroidx/paging/PageFetcherSnapshotState;

    .line 328
    .line 329
    sget-object v13, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    .line 330
    .line 331
    move-object v14, v1

    .line 332
    check-cast v14, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 333
    .line 334
    const/4 v15, 0x0

    .line 335
    invoke-virtual {v12, v15, v13, v14, v9}, Landroidx/paging/PageFetcherSnapshotState;->insert(ILandroidx/paging/LoadType;Landroidx/paging/PagingSource$LoadResult$Page;Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v14

    .line 339
    iget-object v12, v12, Landroidx/paging/PageFetcherSnapshotState;->sourceLoadStates:Lcom/caverock/androidsvg/SVG;

    .line 340
    .line 341
    sget-object v15, Landroidx/paging/LoadState$NotLoading;->Incomplete:Landroidx/paging/LoadState$NotLoading;

    .line 342
    .line 343
    invoke-virtual {v12, v13, v15}, Lcom/caverock/androidsvg/SVG;->set(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    .line 344
    .line 345
    .line 346
    move-object v15, v1

    .line 347
    check-cast v15, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 348
    .line 349
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    .line 351
    .line 352
    sget-object v15, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    .line 353
    .line 354
    sget-object v7, Landroidx/paging/LoadState$NotLoading;->Complete:Landroidx/paging/LoadState$NotLoading;

    .line 355
    .line 356
    invoke-virtual {v12, v15, v7}, Lcom/caverock/androidsvg/SVG;->set(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    .line 357
    .line 358
    .line 359
    move-object v15, v1

    .line 360
    check-cast v15, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 361
    .line 362
    iget-object v15, v15, Landroidx/paging/PagingSource$LoadResult$Page;->nextKey:Ljava/lang/Object;

    .line 363
    .line 364
    if-nez v15, :cond_6

    .line 365
    .line 366
    sget-object v15, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    .line 367
    .line 368
    invoke-virtual {v12, v15, v7}, Lcom/caverock/androidsvg/SVG;->set(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 369
    .line 370
    .line 371
    goto :goto_5

    .line 372
    :catchall_4
    move-exception v0

    .line 373
    goto :goto_9

    .line 374
    :cond_6
    :goto_5
    invoke-interface {v4, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    if-eqz v14, :cond_a

    .line 378
    .line 379
    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 380
    .line 381
    if-eqz v4, :cond_7

    .line 382
    .line 383
    invoke-static {v10, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 384
    .line 385
    .line 386
    move-result v4

    .line 387
    if-eqz v4, :cond_7

    .line 388
    .line 389
    invoke-static {v13, v9, v1}, Landroidx/paging/PageFetcherSnapshot;->loadResultLog(Landroidx/paging/LoadType;Ljava/lang/Object;Landroidx/paging/PagingSource$LoadResult;)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v4

    .line 393
    invoke-static {v10, v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 394
    .line 395
    .line 396
    :cond_7
    iget-object v4, v8, Landroidx/paging/PageFetcherSnapshotState$Holder;->lock:Lkotlinx/coroutines/sync/MutexImpl;

    .line 397
    .line 398
    iput-object v1, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$0:Ljava/lang/Object;

    .line 399
    .line 400
    iput-object v8, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$1:Ljava/lang/Object;

    .line 401
    .line 402
    iput-object v4, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$2:Lkotlinx/coroutines/sync/MutexImpl;

    .line 403
    .line 404
    const/4 v6, 0x5

    .line 405
    iput v6, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->label:I

    .line 406
    .line 407
    invoke-virtual {v4, v2}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v6

    .line 411
    if-ne v6, v3, :cond_8

    .line 412
    .line 413
    goto/16 :goto_b

    .line 414
    .line 415
    :cond_8
    move-object v6, v1

    .line 416
    :goto_6
    :try_start_6
    iget-object v1, v8, Landroidx/paging/PageFetcherSnapshotState$Holder;->state:Landroidx/paging/PageFetcherSnapshotState;

    .line 417
    .line 418
    iget-object v0, v0, Landroidx/paging/PageFetcherSnapshot;->pageEventCh:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 419
    .line 420
    move-object v7, v6

    .line 421
    check-cast v7, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 422
    .line 423
    sget-object v8, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    .line 424
    .line 425
    invoke-virtual {v1, v7, v8}, Landroidx/paging/PageFetcherSnapshotState;->toPageEvent$paging_common(Landroidx/paging/PagingSource$LoadResult$Page;Landroidx/paging/LoadType;)Landroidx/paging/PageEvent$Insert;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    iput-object v6, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$0:Ljava/lang/Object;

    .line 430
    .line 431
    iput-object v4, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$1:Ljava/lang/Object;

    .line 432
    .line 433
    iput-object v11, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$2:Lkotlinx/coroutines/sync/MutexImpl;

    .line 434
    .line 435
    const/4 v6, 0x6

    .line 436
    iput v6, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->label:I

    .line 437
    .line 438
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 442
    if-ne v0, v3, :cond_9

    .line 443
    .line 444
    goto :goto_b

    .line 445
    :cond_9
    move-object v3, v4

    .line 446
    :goto_7
    invoke-interface {v3, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 447
    .line 448
    .line 449
    return-object v5

    .line 450
    :catchall_5
    move-exception v0

    .line 451
    move-object v3, v4

    .line 452
    :goto_8
    invoke-interface {v3, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    throw v0

    .line 456
    :cond_a
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 457
    .line 458
    if-eqz v0, :cond_b

    .line 459
    .line 460
    const/4 v0, 0x2

    .line 461
    invoke-static {v10, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 462
    .line 463
    .line 464
    move-result v0

    .line 465
    if-eqz v0, :cond_b

    .line 466
    .line 467
    invoke-static {v13, v9, v11}, Landroidx/paging/PageFetcherSnapshot;->loadResultLog(Landroidx/paging/LoadType;Ljava/lang/Object;Landroidx/paging/PagingSource$LoadResult;)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    invoke-static {v10, v0, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 472
    .line 473
    .line 474
    :cond_b
    return-object v5

    .line 475
    :goto_9
    invoke-interface {v4, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 476
    .line 477
    .line 478
    throw v0

    .line 479
    :cond_c
    instance-of v4, v1, Landroidx/paging/PagingSource$LoadResult$Error;

    .line 480
    .line 481
    if-eqz v4, :cond_10

    .line 482
    .line 483
    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 484
    .line 485
    if-eqz v4, :cond_d

    .line 486
    .line 487
    const/4 v4, 0x2

    .line 488
    invoke-static {v10, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 489
    .line 490
    .line 491
    move-result v4

    .line 492
    if-eqz v4, :cond_d

    .line 493
    .line 494
    sget-object v4, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    .line 495
    .line 496
    invoke-static {v4, v9, v1}, Landroidx/paging/PageFetcherSnapshot;->loadResultLog(Landroidx/paging/LoadType;Ljava/lang/Object;Landroidx/paging/PagingSource$LoadResult;)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v4

    .line 500
    invoke-static {v10, v4, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 501
    .line 502
    .line 503
    :cond_d
    iget-object v4, v8, Landroidx/paging/PageFetcherSnapshotState$Holder;->lock:Lkotlinx/coroutines/sync/MutexImpl;

    .line 504
    .line 505
    iput-object v1, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$0:Ljava/lang/Object;

    .line 506
    .line 507
    iput-object v8, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$1:Ljava/lang/Object;

    .line 508
    .line 509
    iput-object v4, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$2:Lkotlinx/coroutines/sync/MutexImpl;

    .line 510
    .line 511
    const/16 v6, 0x8

    .line 512
    .line 513
    iput v6, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->label:I

    .line 514
    .line 515
    invoke-virtual {v4, v2}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v6

    .line 519
    if-ne v6, v3, :cond_e

    .line 520
    .line 521
    goto :goto_b

    .line 522
    :cond_e
    move-object v6, v1

    .line 523
    :goto_a
    :try_start_7
    iget-object v1, v8, Landroidx/paging/PageFetcherSnapshotState$Holder;->state:Landroidx/paging/PageFetcherSnapshotState;

    .line 524
    .line 525
    new-instance v7, Landroidx/paging/LoadState$Error;

    .line 526
    .line 527
    check-cast v6, Landroidx/paging/PagingSource$LoadResult$Error;

    .line 528
    .line 529
    iget-object v6, v6, Landroidx/paging/PagingSource$LoadResult$Error;->throwable:Ljava/lang/Exception;

    .line 530
    .line 531
    invoke-direct {v7, v6}, Landroidx/paging/LoadState$Error;-><init>(Ljava/lang/Exception;)V

    .line 532
    .line 533
    .line 534
    sget-object v6, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    .line 535
    .line 536
    iput-object v4, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$0:Ljava/lang/Object;

    .line 537
    .line 538
    iput-object v11, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$1:Ljava/lang/Object;

    .line 539
    .line 540
    iput-object v11, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->L$2:Lkotlinx/coroutines/sync/MutexImpl;

    .line 541
    .line 542
    const/16 v8, 0x9

    .line 543
    .line 544
    iput v8, v2, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->label:I

    .line 545
    .line 546
    invoke-virtual {v0, v1, v6, v7, v2}, Landroidx/paging/PageFetcherSnapshot;->setError(Landroidx/paging/PageFetcherSnapshotState;Landroidx/paging/LoadType;Landroidx/paging/LoadState$Error;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 550
    if-ne v0, v3, :cond_f

    .line 551
    .line 552
    :goto_b
    return-object v3

    .line 553
    :cond_f
    move-object v2, v4

    .line 554
    :goto_c
    invoke-interface {v2, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 555
    .line 556
    .line 557
    return-object v5

    .line 558
    :catchall_6
    move-exception v0

    .line 559
    move-object v2, v4

    .line 560
    :goto_d
    invoke-interface {v2, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 561
    .line 562
    .line 563
    throw v0

    .line 564
    :cond_10
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 565
    .line 566
    .line 567
    return-object v11

    .line 568
    :goto_e
    invoke-interface {v4, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 569
    .line 570
    .line 571
    throw v0

    .line 572
    nop

    .line 573
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final doLoad(Landroidx/paging/LoadType;Landroidx/paging/GenerationalViewportHint;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/paging/PageFetcherSnapshot;->pageEventCh:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/paging/PageFetcherSnapshot;->config:Landroidx/paging/PagingConfig;

    .line 10
    .line 11
    iget v4, v4, Landroidx/paging/PagingConfig;->pageSize:I

    .line 12
    .line 13
    instance-of v5, v2, Landroidx/paging/PageFetcherSnapshot$doLoad$1;

    .line 14
    .line 15
    if-eqz v5, :cond_0

    .line 16
    .line 17
    move-object v5, v2

    .line 18
    check-cast v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;

    .line 19
    .line 20
    iget v6, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->label:I

    .line 21
    .line 22
    const/high16 v7, -0x80000000

    .line 23
    .line 24
    and-int v8, v6, v7

    .line 25
    .line 26
    if-eqz v8, :cond_0

    .line 27
    .line 28
    sub-int/2addr v6, v7

    .line 29
    iput v6, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->label:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;

    .line 33
    .line 34
    invoke-direct {v5, v0, v2}, Landroidx/paging/PageFetcherSnapshot$doLoad$1;-><init>(Landroidx/paging/PageFetcherSnapshot;Lkotlin/coroutines/Continuation;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-object v2, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->result:Ljava/lang/Object;

    .line 38
    .line 39
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 40
    .line 41
    iget v7, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->label:I

    .line 42
    .line 43
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 44
    .line 45
    iget-object v9, v0, Landroidx/paging/PageFetcherSnapshot;->pagingSource:Landroidx/paging/PagingSource;

    .line 46
    .line 47
    const-string v10, "Use doInitialLoad for LoadType == REFRESH"

    .line 48
    .line 49
    iget-object v12, v0, Landroidx/paging/PageFetcherSnapshot;->stateHolder:Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 50
    .line 51
    const-string v14, "Paging"

    .line 52
    .line 53
    const/4 v11, 0x0

    .line 54
    packed-switch v7, :pswitch_data_0

    .line 55
    .line 56
    .line 57
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object v11

    .line 63
    :pswitch_0
    iget-object v1, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$6:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    .line 66
    .line 67
    iget-object v4, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$5:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v4, Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 70
    .line 71
    iget-object v7, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$4:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 74
    .line 75
    iget-object v13, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$3:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 78
    .line 79
    iget-object v15, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$2:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v15, Lkotlin/jvm/internal/Ref$IntRef;

    .line 82
    .line 83
    iget-object v11, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$1:Landroidx/paging/GenerationalViewportHint;

    .line 84
    .line 85
    move-object/from16 v18, v2

    .line 86
    .line 87
    iget-object v2, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$0:Landroidx/paging/LoadType;

    .line 88
    .line 89
    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :try_start_0
    iget-object v4, v4, Landroidx/paging/PageFetcherSnapshotState$Holder;->state:Landroidx/paging/PageFetcherSnapshotState;

    .line 93
    .line 94
    move-object/from16 p1, v2

    .line 95
    .line 96
    iget-object v2, v0, Landroidx/paging/PageFetcherSnapshot;->hintHandler:Landroidx/paging/HintHandler;

    .line 97
    .line 98
    iget-object v2, v2, Landroidx/paging/HintHandler;->state:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v2, Lcoil3/ImageLoader$Builder;

    .line 101
    .line 102
    iget-object v2, v2, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v2, Landroidx/paging/ViewportHint$Access;

    .line 105
    .line 106
    invoke-virtual {v4, v2}, Landroidx/paging/PageFetcherSnapshotState;->currentPagingState$paging_common(Landroidx/paging/ViewportHint$Access;)Landroidx/paging/PagingState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .line 108
    .line 109
    const/4 v2, 0x0

    .line 110
    invoke-interface {v1, v2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    move-object/from16 v2, p1

    .line 114
    .line 115
    move-object/from16 v18, v8

    .line 116
    .line 117
    move-object/from16 v19, v10

    .line 118
    .line 119
    goto/16 :goto_c

    .line 120
    .line 121
    :catchall_0
    move-exception v0

    .line 122
    const/4 v2, 0x0

    .line 123
    invoke-interface {v1, v2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    throw v0

    .line 127
    :pswitch_1
    move-object/from16 v18, v2

    .line 128
    .line 129
    iget-object v1, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$7:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    .line 132
    .line 133
    iget-object v2, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$6:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v2, Landroidx/paging/PagingSource$LoadResult;

    .line 136
    .line 137
    iget-object v4, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$5:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v4, Landroidx/paging/PagingSource$LoadParams;

    .line 140
    .line 141
    iget-object v7, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$4:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 144
    .line 145
    iget-object v11, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$3:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 148
    .line 149
    iget-object v13, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$2:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v13, Lkotlin/jvm/internal/Ref$IntRef;

    .line 152
    .line 153
    iget-object v15, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$1:Landroidx/paging/GenerationalViewportHint;

    .line 154
    .line 155
    move-object/from16 p1, v1

    .line 156
    .line 157
    iget-object v1, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$0:Landroidx/paging/LoadType;

    .line 158
    .line 159
    :try_start_1
    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 160
    .line 161
    .line 162
    move-object/from16 v18, v13

    .line 163
    .line 164
    move-object v13, v11

    .line 165
    move-object v11, v15

    .line 166
    move-object/from16 v15, v18

    .line 167
    .line 168
    move-object/from16 v18, v8

    .line 169
    .line 170
    move-object/from16 v20, v9

    .line 171
    .line 172
    move-object/from16 v19, v10

    .line 173
    .line 174
    move-object v8, v0

    .line 175
    move-object v0, v1

    .line 176
    move-object v10, v3

    .line 177
    const/4 v3, 0x0

    .line 178
    move-object/from16 v1, p1

    .line 179
    .line 180
    goto/16 :goto_17

    .line 181
    .line 182
    :catchall_1
    move-exception v0

    .line 183
    move-object/from16 v1, p1

    .line 184
    .line 185
    :goto_1
    const/4 v2, 0x0

    .line 186
    goto/16 :goto_18

    .line 187
    .line 188
    :pswitch_2
    move-object/from16 v18, v2

    .line 189
    .line 190
    iget-object v1, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$8:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v1, Landroidx/paging/PageFetcherSnapshotState;

    .line 193
    .line 194
    iget-object v2, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$7:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    .line 197
    .line 198
    iget-object v4, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$6:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v4, Landroidx/paging/PagingSource$LoadResult;

    .line 201
    .line 202
    iget-object v7, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$5:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast v7, Landroidx/paging/PagingSource$LoadParams;

    .line 205
    .line 206
    iget-object v11, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$4:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 209
    .line 210
    iget-object v13, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$3:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 213
    .line 214
    iget-object v15, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$2:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast v15, Lkotlin/jvm/internal/Ref$IntRef;

    .line 217
    .line 218
    move-object/from16 p1, v1

    .line 219
    .line 220
    iget-object v1, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$1:Landroidx/paging/GenerationalViewportHint;

    .line 221
    .line 222
    move-object/from16 p2, v1

    .line 223
    .line 224
    iget-object v1, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$0:Landroidx/paging/LoadType;

    .line 225
    .line 226
    :try_start_2
    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 227
    .line 228
    .line 229
    move-object/from16 v0, p2

    .line 230
    .line 231
    move-object/from16 v21, v3

    .line 232
    .line 233
    move-object/from16 v18, v8

    .line 234
    .line 235
    move-object/from16 v20, v9

    .line 236
    .line 237
    move-object/from16 v19, v10

    .line 238
    .line 239
    const/4 v8, 0x3

    .line 240
    move-object v9, v4

    .line 241
    move-object v4, v2

    .line 242
    move-object v2, v1

    .line 243
    move-object/from16 v1, p1

    .line 244
    .line 245
    goto/16 :goto_15

    .line 246
    .line 247
    :catchall_2
    move-exception v0

    .line 248
    move-object v1, v2

    .line 249
    goto :goto_1

    .line 250
    :pswitch_3
    move-object/from16 v18, v2

    .line 251
    .line 252
    iget-object v1, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$9:Lkotlinx/coroutines/sync/MutexImpl;

    .line 253
    .line 254
    iget-object v2, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$8:Ljava/lang/Object;

    .line 255
    .line 256
    check-cast v2, Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 257
    .line 258
    iget-object v4, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$7:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast v4, Landroidx/paging/LoadType;

    .line 261
    .line 262
    iget-object v7, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$6:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v7, Landroidx/paging/PagingSource$LoadResult;

    .line 265
    .line 266
    iget-object v11, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$5:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast v11, Landroidx/paging/PagingSource$LoadParams;

    .line 269
    .line 270
    iget-object v13, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$4:Ljava/lang/Object;

    .line 271
    .line 272
    check-cast v13, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 273
    .line 274
    iget-object v15, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$3:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 277
    .line 278
    move-object/from16 p1, v1

    .line 279
    .line 280
    iget-object v1, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$2:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast v1, Lkotlin/jvm/internal/Ref$IntRef;

    .line 283
    .line 284
    move-object/from16 p2, v1

    .line 285
    .line 286
    iget-object v1, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$1:Landroidx/paging/GenerationalViewportHint;

    .line 287
    .line 288
    move-object/from16 v19, v1

    .line 289
    .line 290
    iget-object v1, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$0:Landroidx/paging/LoadType;

    .line 291
    .line 292
    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    move-object v0, v2

    .line 296
    move-object/from16 v21, v3

    .line 297
    .line 298
    move-object/from16 v18, v8

    .line 299
    .line 300
    move-object/from16 v20, v9

    .line 301
    .line 302
    const/4 v3, 0x1

    .line 303
    const/4 v8, 0x3

    .line 304
    move-object v2, v1

    .line 305
    move-object v9, v7

    .line 306
    move-object/from16 v1, v19

    .line 307
    .line 308
    move-object v7, v5

    .line 309
    move-object/from16 v19, v10

    .line 310
    .line 311
    move-object v10, v11

    .line 312
    move-object v11, v13

    .line 313
    move-object v13, v15

    .line 314
    move-object/from16 v15, p2

    .line 315
    .line 316
    move-object v5, v4

    .line 317
    move-object/from16 v4, p1

    .line 318
    .line 319
    goto/16 :goto_14

    .line 320
    .line 321
    :pswitch_4
    move-object/from16 v18, v2

    .line 322
    .line 323
    iget-object v0, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$3:Ljava/lang/Object;

    .line 324
    .line 325
    check-cast v0, Landroidx/paging/PageFetcherSnapshotState;

    .line 326
    .line 327
    iget-object v1, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$2:Ljava/lang/Object;

    .line 328
    .line 329
    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    .line 330
    .line 331
    iget-object v2, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$1:Landroidx/paging/GenerationalViewportHint;

    .line 332
    .line 333
    iget-object v3, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$0:Landroidx/paging/LoadType;

    .line 334
    .line 335
    :try_start_3
    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 336
    .line 337
    .line 338
    move-object/from16 v18, v8

    .line 339
    .line 340
    goto/16 :goto_1c

    .line 341
    .line 342
    :catchall_3
    move-exception v0

    .line 343
    const/4 v2, 0x0

    .line 344
    goto/16 :goto_1d

    .line 345
    .line 346
    :pswitch_5
    move-object/from16 v18, v2

    .line 347
    .line 348
    iget-object v1, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$4:Ljava/lang/Object;

    .line 349
    .line 350
    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    .line 351
    .line 352
    iget-object v2, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$3:Ljava/lang/Object;

    .line 353
    .line 354
    move-object v12, v2

    .line 355
    check-cast v12, Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 356
    .line 357
    iget-object v2, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$2:Ljava/lang/Object;

    .line 358
    .line 359
    check-cast v2, Landroidx/paging/PagingSource$LoadResult;

    .line 360
    .line 361
    iget-object v3, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$1:Landroidx/paging/GenerationalViewportHint;

    .line 362
    .line 363
    iget-object v4, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$0:Landroidx/paging/LoadType;

    .line 364
    .line 365
    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    move-object/from16 v18, v8

    .line 369
    .line 370
    move-object v8, v0

    .line 371
    goto/16 :goto_1a

    .line 372
    .line 373
    :pswitch_6
    move-object/from16 v18, v2

    .line 374
    .line 375
    iget-object v1, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$8:Ljava/lang/Object;

    .line 376
    .line 377
    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    .line 378
    .line 379
    iget-object v2, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$7:Ljava/lang/Object;

    .line 380
    .line 381
    check-cast v2, Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 382
    .line 383
    iget-object v4, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$6:Ljava/lang/Object;

    .line 384
    .line 385
    check-cast v4, Landroidx/paging/PagingSource$LoadResult;

    .line 386
    .line 387
    iget-object v7, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$5:Ljava/lang/Object;

    .line 388
    .line 389
    check-cast v7, Landroidx/paging/PagingSource$LoadParams;

    .line 390
    .line 391
    iget-object v11, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$4:Ljava/lang/Object;

    .line 392
    .line 393
    check-cast v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 394
    .line 395
    iget-object v13, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$3:Ljava/lang/Object;

    .line 396
    .line 397
    check-cast v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 398
    .line 399
    iget-object v15, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$2:Ljava/lang/Object;

    .line 400
    .line 401
    check-cast v15, Lkotlin/jvm/internal/Ref$IntRef;

    .line 402
    .line 403
    move-object/from16 p1, v1

    .line 404
    .line 405
    iget-object v1, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$1:Landroidx/paging/GenerationalViewportHint;

    .line 406
    .line 407
    move-object/from16 v19, v1

    .line 408
    .line 409
    iget-object v1, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$0:Landroidx/paging/LoadType;

    .line 410
    .line 411
    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    move-object/from16 v18, v2

    .line 415
    .line 416
    move-object v2, v1

    .line 417
    move-object/from16 v1, v19

    .line 418
    .line 419
    move-object/from16 v19, v10

    .line 420
    .line 421
    move-object v10, v7

    .line 422
    move-object v7, v4

    .line 423
    move-object/from16 v4, v18

    .line 424
    .line 425
    move-object/from16 v18, v8

    .line 426
    .line 427
    move-object/from16 v8, p1

    .line 428
    .line 429
    goto/16 :goto_10

    .line 430
    .line 431
    :pswitch_7
    move-object/from16 v18, v2

    .line 432
    .line 433
    iget-object v1, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$5:Ljava/lang/Object;

    .line 434
    .line 435
    check-cast v1, Landroidx/paging/PagingSource$LoadParams;

    .line 436
    .line 437
    iget-object v2, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$4:Ljava/lang/Object;

    .line 438
    .line 439
    check-cast v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 440
    .line 441
    iget-object v4, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$3:Ljava/lang/Object;

    .line 442
    .line 443
    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 444
    .line 445
    iget-object v7, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$2:Ljava/lang/Object;

    .line 446
    .line 447
    check-cast v7, Lkotlin/jvm/internal/Ref$IntRef;

    .line 448
    .line 449
    iget-object v11, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$1:Landroidx/paging/GenerationalViewportHint;

    .line 450
    .line 451
    iget-object v13, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$0:Landroidx/paging/LoadType;

    .line 452
    .line 453
    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 454
    .line 455
    .line 456
    move-object v15, v7

    .line 457
    move-object/from16 v19, v10

    .line 458
    .line 459
    move-object v7, v2

    .line 460
    move-object v2, v1

    .line 461
    move-object v1, v13

    .line 462
    move-object v13, v4

    .line 463
    move-object/from16 v4, v18

    .line 464
    .line 465
    move-object/from16 v18, v8

    .line 466
    .line 467
    goto/16 :goto_e

    .line 468
    .line 469
    :pswitch_8
    move-object/from16 v18, v2

    .line 470
    .line 471
    iget-object v1, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$6:Ljava/lang/Object;

    .line 472
    .line 473
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 474
    .line 475
    iget-object v2, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$5:Ljava/lang/Object;

    .line 476
    .line 477
    iget-object v4, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$4:Ljava/lang/Object;

    .line 478
    .line 479
    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    .line 480
    .line 481
    iget-object v7, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$3:Ljava/lang/Object;

    .line 482
    .line 483
    check-cast v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 484
    .line 485
    iget-object v11, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$2:Ljava/lang/Object;

    .line 486
    .line 487
    check-cast v11, Lkotlin/jvm/internal/Ref$IntRef;

    .line 488
    .line 489
    iget-object v13, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$1:Landroidx/paging/GenerationalViewportHint;

    .line 490
    .line 491
    iget-object v15, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$0:Landroidx/paging/LoadType;

    .line 492
    .line 493
    :try_start_4
    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 494
    .line 495
    .line 496
    move-object/from16 v18, v8

    .line 497
    .line 498
    move-object/from16 v19, v10

    .line 499
    .line 500
    goto/16 :goto_9

    .line 501
    .line 502
    :catchall_4
    move-exception v0

    .line 503
    :goto_2
    const/4 v2, 0x0

    .line 504
    goto/16 :goto_1e

    .line 505
    .line 506
    :pswitch_9
    move-object/from16 v18, v2

    .line 507
    .line 508
    iget-object v1, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$6:Ljava/lang/Object;

    .line 509
    .line 510
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 511
    .line 512
    iget-object v2, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$5:Ljava/lang/Object;

    .line 513
    .line 514
    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    .line 515
    .line 516
    iget-object v4, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$4:Ljava/lang/Object;

    .line 517
    .line 518
    check-cast v4, Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 519
    .line 520
    iget-object v7, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$3:Ljava/lang/Object;

    .line 521
    .line 522
    check-cast v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 523
    .line 524
    iget-object v11, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$2:Ljava/lang/Object;

    .line 525
    .line 526
    check-cast v11, Lkotlin/jvm/internal/Ref$IntRef;

    .line 527
    .line 528
    iget-object v13, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$1:Landroidx/paging/GenerationalViewportHint;

    .line 529
    .line 530
    iget-object v15, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$0:Landroidx/paging/LoadType;

    .line 531
    .line 532
    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 533
    .line 534
    .line 535
    move-object/from16 v18, v8

    .line 536
    .line 537
    goto/16 :goto_8

    .line 538
    .line 539
    :pswitch_a
    move-object/from16 v18, v2

    .line 540
    .line 541
    iget-object v1, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$4:Ljava/lang/Object;

    .line 542
    .line 543
    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    .line 544
    .line 545
    iget-object v2, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$3:Ljava/lang/Object;

    .line 546
    .line 547
    check-cast v2, Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 548
    .line 549
    iget-object v7, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$2:Ljava/lang/Object;

    .line 550
    .line 551
    check-cast v7, Lkotlin/jvm/internal/Ref$IntRef;

    .line 552
    .line 553
    iget-object v11, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$1:Landroidx/paging/GenerationalViewportHint;

    .line 554
    .line 555
    iget-object v13, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$0:Landroidx/paging/LoadType;

    .line 556
    .line 557
    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 558
    .line 559
    .line 560
    goto :goto_3

    .line 561
    :pswitch_b
    move-object/from16 v18, v2

    .line 562
    .line 563
    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 564
    .line 565
    .line 566
    sget-object v2, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    .line 567
    .line 568
    if-eq v1, v2, :cond_23

    .line 569
    .line 570
    new-instance v7, Lkotlin/jvm/internal/Ref$IntRef;

    .line 571
    .line 572
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 573
    .line 574
    .line 575
    iget-object v2, v12, Landroidx/paging/PageFetcherSnapshotState$Holder;->lock:Lkotlinx/coroutines/sync/MutexImpl;

    .line 576
    .line 577
    iput-object v1, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$0:Landroidx/paging/LoadType;

    .line 578
    .line 579
    move-object/from16 v11, p2

    .line 580
    .line 581
    iput-object v11, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$1:Landroidx/paging/GenerationalViewportHint;

    .line 582
    .line 583
    iput-object v7, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$2:Ljava/lang/Object;

    .line 584
    .line 585
    iput-object v12, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$3:Ljava/lang/Object;

    .line 586
    .line 587
    iput-object v2, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$4:Ljava/lang/Object;

    .line 588
    .line 589
    const/4 v13, 0x1

    .line 590
    iput v13, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->label:I

    .line 591
    .line 592
    invoke-virtual {v2, v5}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v13

    .line 596
    if-ne v13, v6, :cond_1

    .line 597
    .line 598
    goto/16 :goto_1b

    .line 599
    .line 600
    :cond_1
    move-object v13, v1

    .line 601
    move-object v1, v2

    .line 602
    move-object v2, v12

    .line 603
    :goto_3
    :try_start_5
    iget-object v2, v2, Landroidx/paging/PageFetcherSnapshotState$Holder;->state:Landroidx/paging/PageFetcherSnapshotState;

    .line 604
    .line 605
    iget-object v15, v2, Landroidx/paging/PageFetcherSnapshotState;->pages:Ljava/util/ArrayList;

    .line 606
    .line 607
    sget-object v18, Landroidx/paging/PageFetcherSnapshot$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 608
    .line 609
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    .line 610
    .line 611
    .line 612
    move-result v19

    .line 613
    move/from16 v20, v4

    .line 614
    .line 615
    aget v4, v18, v19

    .line 616
    .line 617
    move-object/from16 v18, v8

    .line 618
    .line 619
    const/4 v8, 0x1

    .line 620
    if-eq v4, v8, :cond_22

    .line 621
    .line 622
    const/16 v19, 0x0

    .line 623
    .line 624
    move/from16 v16, v8

    .line 625
    .line 626
    const/4 v8, 0x2

    .line 627
    if-eq v4, v8, :cond_5

    .line 628
    .line 629
    const/4 v8, 0x3

    .line 630
    if-ne v4, v8, :cond_4

    .line 631
    .line 632
    iget v2, v2, Landroidx/paging/PageFetcherSnapshotState;->initialPageIndex:I

    .line 633
    .line 634
    iget-object v4, v11, Landroidx/paging/GenerationalViewportHint;->hint:Landroidx/paging/ViewportHint;

    .line 635
    .line 636
    iget v4, v4, Landroidx/paging/ViewportHint;->originalPageOffsetLast:I

    .line 637
    .line 638
    add-int/2addr v2, v4

    .line 639
    add-int/lit8 v2, v2, 0x1

    .line 640
    .line 641
    if-gez v2, :cond_2

    .line 642
    .line 643
    iget v4, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 644
    .line 645
    neg-int v2, v2

    .line 646
    mul-int v2, v2, v20

    .line 647
    .line 648
    add-int/2addr v2, v4

    .line 649
    iput v2, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 650
    .line 651
    move/from16 v2, v19

    .line 652
    .line 653
    goto :goto_4

    .line 654
    :catchall_5
    move-exception v0

    .line 655
    const/4 v3, 0x0

    .line 656
    goto/16 :goto_1f

    .line 657
    .line 658
    :cond_2
    :goto_4
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 659
    .line 660
    .line 661
    move-result v4

    .line 662
    const/16 v16, 0x1

    .line 663
    .line 664
    add-int/lit8 v4, v4, -0x1

    .line 665
    .line 666
    if-gt v2, v4, :cond_3

    .line 667
    .line 668
    :goto_5
    iget v8, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 669
    .line 670
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    move-result-object v19

    .line 674
    move/from16 v20, v8

    .line 675
    .line 676
    move-object/from16 v8, v19

    .line 677
    .line 678
    check-cast v8, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 679
    .line 680
    iget-object v8, v8, Landroidx/paging/PagingSource$LoadResult$Page;->data:Ljava/util/List;

    .line 681
    .line 682
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 683
    .line 684
    .line 685
    move-result v8

    .line 686
    add-int v8, v20, v8

    .line 687
    .line 688
    iput v8, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 689
    .line 690
    if-eq v2, v4, :cond_3

    .line 691
    .line 692
    add-int/lit8 v2, v2, 0x1

    .line 693
    .line 694
    goto :goto_5

    .line 695
    :cond_3
    const/4 v2, 0x0

    .line 696
    goto :goto_7

    .line 697
    :cond_4
    new-instance v0, Lcoil3/network/HttpException;

    .line 698
    .line 699
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 700
    .line 701
    .line 702
    throw v0

    .line 703
    :cond_5
    iget v2, v2, Landroidx/paging/PageFetcherSnapshotState;->initialPageIndex:I

    .line 704
    .line 705
    iget-object v4, v11, Landroidx/paging/GenerationalViewportHint;->hint:Landroidx/paging/ViewportHint;

    .line 706
    .line 707
    iget v4, v4, Landroidx/paging/ViewportHint;->originalPageOffsetFirst:I

    .line 708
    .line 709
    add-int/2addr v2, v4

    .line 710
    const/16 v16, 0x1

    .line 711
    .line 712
    add-int/lit8 v2, v2, -0x1

    .line 713
    .line 714
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 715
    .line 716
    .line 717
    move-result v4

    .line 718
    add-int/lit8 v4, v4, -0x1

    .line 719
    .line 720
    if-le v2, v4, :cond_6

    .line 721
    .line 722
    iget v4, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 723
    .line 724
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 725
    .line 726
    .line 727
    move-result v8

    .line 728
    add-int/lit8 v8, v8, -0x1

    .line 729
    .line 730
    sub-int/2addr v2, v8

    .line 731
    mul-int v2, v2, v20

    .line 732
    .line 733
    add-int/2addr v2, v4

    .line 734
    iput v2, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 735
    .line 736
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 737
    .line 738
    .line 739
    move-result v2

    .line 740
    add-int/lit8 v2, v2, -0x1

    .line 741
    .line 742
    :cond_6
    if-ltz v2, :cond_3

    .line 743
    .line 744
    move/from16 v4, v19

    .line 745
    .line 746
    :goto_6
    iget v8, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 747
    .line 748
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 749
    .line 750
    .line 751
    move-result-object v19

    .line 752
    move/from16 v20, v8

    .line 753
    .line 754
    move-object/from16 v8, v19

    .line 755
    .line 756
    check-cast v8, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 757
    .line 758
    iget-object v8, v8, Landroidx/paging/PagingSource$LoadResult$Page;->data:Ljava/util/List;

    .line 759
    .line 760
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 761
    .line 762
    .line 763
    move-result v8

    .line 764
    add-int v8, v20, v8

    .line 765
    .line 766
    iput v8, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 767
    .line 768
    if-eq v4, v2, :cond_3

    .line 769
    .line 770
    add-int/lit8 v4, v4, 0x1

    .line 771
    .line 772
    goto :goto_6

    .line 773
    :goto_7
    invoke-interface {v1, v2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 774
    .line 775
    .line 776
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 777
    .line 778
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 779
    .line 780
    .line 781
    iget-object v2, v12, Landroidx/paging/PageFetcherSnapshotState$Holder;->lock:Lkotlinx/coroutines/sync/MutexImpl;

    .line 782
    .line 783
    iput-object v13, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$0:Landroidx/paging/LoadType;

    .line 784
    .line 785
    iput-object v11, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$1:Landroidx/paging/GenerationalViewportHint;

    .line 786
    .line 787
    iput-object v7, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$2:Ljava/lang/Object;

    .line 788
    .line 789
    iput-object v1, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$3:Ljava/lang/Object;

    .line 790
    .line 791
    iput-object v12, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$4:Ljava/lang/Object;

    .line 792
    .line 793
    iput-object v2, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$5:Ljava/lang/Object;

    .line 794
    .line 795
    iput-object v1, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$6:Ljava/lang/Object;

    .line 796
    .line 797
    const/4 v8, 0x2

    .line 798
    iput v8, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->label:I

    .line 799
    .line 800
    invoke-virtual {v2, v5}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 801
    .line 802
    .line 803
    move-result-object v4

    .line 804
    if-ne v4, v6, :cond_7

    .line 805
    .line 806
    goto/16 :goto_1b

    .line 807
    .line 808
    :cond_7
    move-object v4, v12

    .line 809
    move-object v15, v13

    .line 810
    move-object v13, v11

    .line 811
    move-object v11, v7

    .line 812
    move-object v7, v1

    .line 813
    :goto_8
    :try_start_6
    iget-object v4, v4, Landroidx/paging/PageFetcherSnapshotState$Holder;->state:Landroidx/paging/PageFetcherSnapshotState;

    .line 814
    .line 815
    iget v8, v13, Landroidx/paging/GenerationalViewportHint;->generationId:I

    .line 816
    .line 817
    move-object/from16 v19, v10

    .line 818
    .line 819
    iget-object v10, v13, Landroidx/paging/GenerationalViewportHint;->hint:Landroidx/paging/ViewportHint;

    .line 820
    .line 821
    invoke-virtual {v10, v15}, Landroidx/paging/ViewportHint;->presentedItemsBeyondAnchor$paging_common(Landroidx/paging/LoadType;)I

    .line 822
    .line 823
    .line 824
    move-result v10

    .line 825
    move/from16 p1, v10

    .line 826
    .line 827
    iget v10, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 828
    .line 829
    add-int v10, p1, v10

    .line 830
    .line 831
    invoke-virtual {v0, v4, v15, v8, v10}, Landroidx/paging/PageFetcherSnapshot;->nextLoadKeyOrNull(Landroidx/paging/PageFetcherSnapshotState;Landroidx/paging/LoadType;II)Ljava/lang/Object;

    .line 832
    .line 833
    .line 834
    move-result-object v8

    .line 835
    if-eqz v8, :cond_9

    .line 836
    .line 837
    iput-object v15, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$0:Landroidx/paging/LoadType;

    .line 838
    .line 839
    iput-object v13, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$1:Landroidx/paging/GenerationalViewportHint;

    .line 840
    .line 841
    iput-object v11, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$2:Ljava/lang/Object;

    .line 842
    .line 843
    iput-object v7, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$3:Ljava/lang/Object;

    .line 844
    .line 845
    iput-object v2, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$4:Ljava/lang/Object;

    .line 846
    .line 847
    iput-object v8, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$5:Ljava/lang/Object;

    .line 848
    .line 849
    iput-object v1, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$6:Ljava/lang/Object;

    .line 850
    .line 851
    const/4 v10, 0x3

    .line 852
    iput v10, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->label:I

    .line 853
    .line 854
    invoke-virtual {v0, v4, v15, v5}, Landroidx/paging/PageFetcherSnapshot;->setLoading(Landroidx/paging/PageFetcherSnapshotState;Landroidx/paging/LoadType;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 855
    .line 856
    .line 857
    move-result-object v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 858
    if-ne v4, v6, :cond_8

    .line 859
    .line 860
    goto/16 :goto_1b

    .line 861
    .line 862
    :cond_8
    move-object v4, v2

    .line 863
    move-object v2, v8

    .line 864
    :goto_9
    move-object v8, v7

    .line 865
    move-object v7, v2

    .line 866
    move-object v2, v4

    .line 867
    move-object v4, v11

    .line 868
    move-object v11, v13

    .line 869
    move-object v13, v8

    .line 870
    :goto_a
    const/4 v8, 0x0

    .line 871
    goto :goto_b

    .line 872
    :catchall_6
    move-exception v0

    .line 873
    move-object v4, v2

    .line 874
    goto/16 :goto_2

    .line 875
    .line 876
    :cond_9
    move-object v4, v11

    .line 877
    move-object v11, v13

    .line 878
    move-object v13, v7

    .line 879
    const/4 v7, 0x0

    .line 880
    goto :goto_a

    .line 881
    :goto_b
    invoke-interface {v2, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 882
    .line 883
    .line 884
    iput-object v7, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 885
    .line 886
    new-instance v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 887
    .line 888
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 889
    .line 890
    .line 891
    move-object v2, v15

    .line 892
    move-object v15, v4

    .line 893
    :goto_c
    iget-object v1, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 894
    .line 895
    if-eqz v1, :cond_21

    .line 896
    .line 897
    invoke-virtual {v0, v2, v1}, Landroidx/paging/PageFetcherSnapshot;->loadParams(Landroidx/paging/LoadType;Ljava/lang/Object;)Landroidx/paging/PagingSource$LoadParams;

    .line 898
    .line 899
    .line 900
    move-result-object v1

    .line 901
    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 902
    .line 903
    if-eqz v4, :cond_a

    .line 904
    .line 905
    const/4 v8, 0x3

    .line 906
    invoke-static {v14, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 907
    .line 908
    .line 909
    move-result v4

    .line 910
    if-eqz v4, :cond_a

    .line 911
    .line 912
    new-instance v4, Ljava/lang/StringBuilder;

    .line 913
    .line 914
    const-string v8, "Start "

    .line 915
    .line 916
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 917
    .line 918
    .line 919
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 920
    .line 921
    .line 922
    const-string v8, " with loadKey "

    .line 923
    .line 924
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    .line 926
    .line 927
    iget-object v8, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 928
    .line 929
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 930
    .line 931
    .line 932
    const-string v8, " on "

    .line 933
    .line 934
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    .line 936
    .line 937
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 938
    .line 939
    .line 940
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 941
    .line 942
    .line 943
    move-result-object v4

    .line 944
    const/4 v8, 0x0

    .line 945
    invoke-static {v14, v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 946
    .line 947
    .line 948
    goto :goto_d

    .line 949
    :cond_a
    const/4 v8, 0x0

    .line 950
    :goto_d
    iput-object v2, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$0:Landroidx/paging/LoadType;

    .line 951
    .line 952
    iput-object v11, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$1:Landroidx/paging/GenerationalViewportHint;

    .line 953
    .line 954
    iput-object v15, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$2:Ljava/lang/Object;

    .line 955
    .line 956
    iput-object v13, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$3:Ljava/lang/Object;

    .line 957
    .line 958
    iput-object v7, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$4:Ljava/lang/Object;

    .line 959
    .line 960
    iput-object v1, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$5:Ljava/lang/Object;

    .line 961
    .line 962
    iput-object v8, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$6:Ljava/lang/Object;

    .line 963
    .line 964
    iput-object v8, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$7:Ljava/lang/Object;

    .line 965
    .line 966
    const/4 v4, 0x4

    .line 967
    iput v4, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->label:I

    .line 968
    .line 969
    invoke-virtual {v9, v1, v5}, Landroidx/paging/PagingSource;->load(Landroidx/paging/PagingSource$LoadParams;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 970
    .line 971
    .line 972
    move-result-object v4

    .line 973
    if-ne v4, v6, :cond_b

    .line 974
    .line 975
    goto/16 :goto_1b

    .line 976
    .line 977
    :cond_b
    move-object/from16 v22, v2

    .line 978
    .line 979
    move-object v2, v1

    .line 980
    move-object/from16 v1, v22

    .line 981
    .line 982
    :goto_e
    check-cast v4, Landroidx/paging/PagingSource$LoadResult;

    .line 983
    .line 984
    instance-of v8, v4, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 985
    .line 986
    if-eqz v8, :cond_1c

    .line 987
    .line 988
    sget-object v8, Landroidx/paging/PageFetcherSnapshot$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 989
    .line 990
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 991
    .line 992
    .line 993
    move-result v10

    .line 994
    aget v8, v8, v10

    .line 995
    .line 996
    const/4 v10, 0x2

    .line 997
    if-eq v8, v10, :cond_d

    .line 998
    .line 999
    const/4 v10, 0x3

    .line 1000
    if-ne v8, v10, :cond_c

    .line 1001
    .line 1002
    move-object v8, v4

    .line 1003
    check-cast v8, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 1004
    .line 1005
    iget-object v8, v8, Landroidx/paging/PagingSource$LoadResult$Page;->nextKey:Ljava/lang/Object;

    .line 1006
    .line 1007
    goto :goto_f

    .line 1008
    :cond_c
    invoke-static/range {v19 .. v19}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 1009
    .line 1010
    .line 1011
    const/16 v17, 0x0

    .line 1012
    .line 1013
    return-object v17

    .line 1014
    :cond_d
    const/4 v8, 0x0

    .line 1015
    :goto_f
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1016
    .line 1017
    .line 1018
    iget-object v10, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1019
    .line 1020
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1021
    .line 1022
    .line 1023
    move-result v8

    .line 1024
    if-nez v8, :cond_1a

    .line 1025
    .line 1026
    iget-object v8, v12, Landroidx/paging/PageFetcherSnapshotState$Holder;->lock:Lkotlinx/coroutines/sync/MutexImpl;

    .line 1027
    .line 1028
    iput-object v1, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$0:Landroidx/paging/LoadType;

    .line 1029
    .line 1030
    iput-object v11, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$1:Landroidx/paging/GenerationalViewportHint;

    .line 1031
    .line 1032
    iput-object v15, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$2:Ljava/lang/Object;

    .line 1033
    .line 1034
    iput-object v13, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$3:Ljava/lang/Object;

    .line 1035
    .line 1036
    iput-object v7, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$4:Ljava/lang/Object;

    .line 1037
    .line 1038
    iput-object v2, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$5:Ljava/lang/Object;

    .line 1039
    .line 1040
    iput-object v4, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$6:Ljava/lang/Object;

    .line 1041
    .line 1042
    iput-object v12, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$7:Ljava/lang/Object;

    .line 1043
    .line 1044
    iput-object v8, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$8:Ljava/lang/Object;

    .line 1045
    .line 1046
    const/4 v10, 0x5

    .line 1047
    iput v10, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->label:I

    .line 1048
    .line 1049
    invoke-virtual {v8, v5}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v10

    .line 1053
    if-ne v10, v6, :cond_e

    .line 1054
    .line 1055
    goto/16 :goto_1b

    .line 1056
    .line 1057
    :cond_e
    move-object v10, v2

    .line 1058
    move-object v2, v1

    .line 1059
    move-object v1, v11

    .line 1060
    move-object v11, v7

    .line 1061
    move-object v7, v4

    .line 1062
    move-object v4, v12

    .line 1063
    :goto_10
    :try_start_7
    iget-object v4, v4, Landroidx/paging/PageFetcherSnapshotState$Holder;->state:Landroidx/paging/PageFetcherSnapshotState;

    .line 1064
    .line 1065
    move-object/from16 v20, v9

    .line 1066
    .line 1067
    iget v9, v1, Landroidx/paging/GenerationalViewportHint;->generationId:I

    .line 1068
    .line 1069
    move-object/from16 v21, v3

    .line 1070
    .line 1071
    move-object v3, v7

    .line 1072
    check-cast v3, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 1073
    .line 1074
    iget-object v0, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1075
    .line 1076
    invoke-virtual {v4, v9, v2, v3, v0}, Landroidx/paging/PageFetcherSnapshotState;->insert(ILandroidx/paging/LoadType;Landroidx/paging/PagingSource$LoadResult$Page;Ljava/lang/Object;)Z

    .line 1077
    .line 1078
    .line 1079
    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    .line 1080
    const/4 v3, 0x0

    .line 1081
    invoke-interface {v8, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1082
    .line 1083
    .line 1084
    if-nez v0, :cond_f

    .line 1085
    .line 1086
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 1087
    .line 1088
    if-eqz v0, :cond_21

    .line 1089
    .line 1090
    const/4 v8, 0x2

    .line 1091
    invoke-static {v14, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1092
    .line 1093
    .line 1094
    move-result v0

    .line 1095
    if-eqz v0, :cond_21

    .line 1096
    .line 1097
    iget-object v0, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1098
    .line 1099
    invoke-static {v2, v0, v3}, Landroidx/paging/PageFetcherSnapshot;->loadResultLog(Landroidx/paging/LoadType;Ljava/lang/Object;Landroidx/paging/PagingSource$LoadResult;)Ljava/lang/String;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v0

    .line 1103
    invoke-static {v14, v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1104
    .line 1105
    .line 1106
    return-object v18

    .line 1107
    :cond_f
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 1108
    .line 1109
    const/4 v8, 0x3

    .line 1110
    if-eqz v0, :cond_10

    .line 1111
    .line 1112
    invoke-static {v14, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1113
    .line 1114
    .line 1115
    move-result v0

    .line 1116
    if-eqz v0, :cond_10

    .line 1117
    .line 1118
    iget-object v0, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1119
    .line 1120
    invoke-static {v2, v0, v7}, Landroidx/paging/PageFetcherSnapshot;->loadResultLog(Landroidx/paging/LoadType;Ljava/lang/Object;Landroidx/paging/PagingSource$LoadResult;)Ljava/lang/String;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v0

    .line 1124
    invoke-static {v14, v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1125
    .line 1126
    .line 1127
    :cond_10
    iget v0, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1128
    .line 1129
    move-object v3, v7

    .line 1130
    check-cast v3, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 1131
    .line 1132
    iget-object v4, v3, Landroidx/paging/PagingSource$LoadResult$Page;->data:Ljava/util/List;

    .line 1133
    .line 1134
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 1135
    .line 1136
    .line 1137
    move-result v4

    .line 1138
    add-int/2addr v4, v0

    .line 1139
    iput v4, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1140
    .line 1141
    sget-object v0, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    .line 1142
    .line 1143
    if-ne v2, v0, :cond_11

    .line 1144
    .line 1145
    :goto_11
    const/4 v3, 0x1

    .line 1146
    goto :goto_12

    .line 1147
    :cond_11
    sget-object v4, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    .line 1148
    .line 1149
    if-ne v2, v4, :cond_12

    .line 1150
    .line 1151
    iget-object v3, v3, Landroidx/paging/PagingSource$LoadResult$Page;->nextKey:Ljava/lang/Object;

    .line 1152
    .line 1153
    if-nez v3, :cond_12

    .line 1154
    .line 1155
    goto :goto_11

    .line 1156
    :goto_12
    iput-boolean v3, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 1157
    .line 1158
    goto :goto_13

    .line 1159
    :cond_12
    const/4 v3, 0x1

    .line 1160
    :goto_13
    sget-object v4, Landroidx/paging/PageFetcherSnapshot$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 1161
    .line 1162
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 1163
    .line 1164
    .line 1165
    move-result v9

    .line 1166
    aget v4, v4, v9

    .line 1167
    .line 1168
    const/4 v9, 0x2

    .line 1169
    if-ne v4, v9, :cond_13

    .line 1170
    .line 1171
    sget-object v0, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    .line 1172
    .line 1173
    :cond_13
    move-object v4, v0

    .line 1174
    iget-object v0, v12, Landroidx/paging/PageFetcherSnapshotState$Holder;->lock:Lkotlinx/coroutines/sync/MutexImpl;

    .line 1175
    .line 1176
    iput-object v2, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$0:Landroidx/paging/LoadType;

    .line 1177
    .line 1178
    iput-object v1, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$1:Landroidx/paging/GenerationalViewportHint;

    .line 1179
    .line 1180
    iput-object v15, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$2:Ljava/lang/Object;

    .line 1181
    .line 1182
    iput-object v13, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$3:Ljava/lang/Object;

    .line 1183
    .line 1184
    iput-object v11, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$4:Ljava/lang/Object;

    .line 1185
    .line 1186
    iput-object v10, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$5:Ljava/lang/Object;

    .line 1187
    .line 1188
    iput-object v7, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$6:Ljava/lang/Object;

    .line 1189
    .line 1190
    iput-object v4, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$7:Ljava/lang/Object;

    .line 1191
    .line 1192
    iput-object v12, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$8:Ljava/lang/Object;

    .line 1193
    .line 1194
    iput-object v0, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$9:Lkotlinx/coroutines/sync/MutexImpl;

    .line 1195
    .line 1196
    const/16 v9, 0x8

    .line 1197
    .line 1198
    iput v9, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->label:I

    .line 1199
    .line 1200
    invoke-virtual {v0, v5}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v9

    .line 1204
    if-ne v9, v6, :cond_14

    .line 1205
    .line 1206
    goto/16 :goto_1b

    .line 1207
    .line 1208
    :cond_14
    move-object v9, v7

    .line 1209
    move-object v7, v5

    .line 1210
    move-object v5, v4

    .line 1211
    move-object v4, v0

    .line 1212
    move-object v0, v12

    .line 1213
    :goto_14
    :try_start_8
    iget-object v0, v0, Landroidx/paging/PageFetcherSnapshotState$Holder;->state:Landroidx/paging/PageFetcherSnapshotState;

    .line 1214
    .line 1215
    iget-object v3, v1, Landroidx/paging/GenerationalViewportHint;->hint:Landroidx/paging/ViewportHint;

    .line 1216
    .line 1217
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1218
    .line 1219
    .line 1220
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1221
    .line 1222
    .line 1223
    move-object v5, v1

    .line 1224
    move-object v1, v0

    .line 1225
    move-object v0, v5

    .line 1226
    move-object v5, v7

    .line 1227
    move-object v7, v10

    .line 1228
    :goto_15
    iget v3, v0, Landroidx/paging/GenerationalViewportHint;->generationId:I

    .line 1229
    .line 1230
    iget-object v10, v0, Landroidx/paging/GenerationalViewportHint;->hint:Landroidx/paging/ViewportHint;

    .line 1231
    .line 1232
    invoke-virtual {v10, v2}, Landroidx/paging/ViewportHint;->presentedItemsBeyondAnchor$paging_common(Landroidx/paging/LoadType;)I

    .line 1233
    .line 1234
    .line 1235
    move-result v10

    .line 1236
    iget v8, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1237
    .line 1238
    add-int/2addr v10, v8

    .line 1239
    move-object/from16 v8, p0

    .line 1240
    .line 1241
    invoke-virtual {v8, v1, v2, v3, v10}, Landroidx/paging/PageFetcherSnapshot;->nextLoadKeyOrNull(Landroidx/paging/PageFetcherSnapshotState;Landroidx/paging/LoadType;II)Ljava/lang/Object;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v3

    .line 1245
    iget-object v10, v1, Landroidx/paging/PageFetcherSnapshotState;->sourceLoadStates:Lcom/caverock/androidsvg/SVG;

    .line 1246
    .line 1247
    iput-object v3, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1248
    .line 1249
    if-nez v3, :cond_16

    .line 1250
    .line 1251
    invoke-virtual {v10, v2}, Lcom/caverock/androidsvg/SVG;->get(Landroidx/paging/LoadType;)Landroidx/paging/LoadState;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v3

    .line 1255
    instance-of v3, v3, Landroidx/paging/LoadState$Error;

    .line 1256
    .line 1257
    if-nez v3, :cond_16

    .line 1258
    .line 1259
    iget-boolean v3, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 1260
    .line 1261
    if-eqz v3, :cond_15

    .line 1262
    .line 1263
    sget-object v3, Landroidx/paging/LoadState$NotLoading;->Complete:Landroidx/paging/LoadState$NotLoading;

    .line 1264
    .line 1265
    goto :goto_16

    .line 1266
    :catchall_7
    move-exception v0

    .line 1267
    move-object v1, v4

    .line 1268
    goto/16 :goto_1

    .line 1269
    .line 1270
    :cond_15
    sget-object v3, Landroidx/paging/LoadState$NotLoading;->Incomplete:Landroidx/paging/LoadState$NotLoading;

    .line 1271
    .line 1272
    :goto_16
    invoke-virtual {v10, v2, v3}, Lcom/caverock/androidsvg/SVG;->set(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    .line 1273
    .line 1274
    .line 1275
    :cond_16
    move-object v3, v9

    .line 1276
    check-cast v3, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 1277
    .line 1278
    invoke-virtual {v1, v3, v2}, Landroidx/paging/PageFetcherSnapshotState;->toPageEvent$paging_common(Landroidx/paging/PagingSource$LoadResult$Page;Landroidx/paging/LoadType;)Landroidx/paging/PageEvent$Insert;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v1

    .line 1282
    iput-object v2, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$0:Landroidx/paging/LoadType;

    .line 1283
    .line 1284
    iput-object v0, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$1:Landroidx/paging/GenerationalViewportHint;

    .line 1285
    .line 1286
    iput-object v15, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$2:Ljava/lang/Object;

    .line 1287
    .line 1288
    iput-object v13, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$3:Ljava/lang/Object;

    .line 1289
    .line 1290
    iput-object v11, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$4:Ljava/lang/Object;

    .line 1291
    .line 1292
    iput-object v7, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$5:Ljava/lang/Object;

    .line 1293
    .line 1294
    iput-object v9, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$6:Ljava/lang/Object;

    .line 1295
    .line 1296
    iput-object v4, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$7:Ljava/lang/Object;

    .line 1297
    .line 1298
    const/4 v3, 0x0

    .line 1299
    iput-object v3, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$8:Ljava/lang/Object;

    .line 1300
    .line 1301
    iput-object v3, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$9:Lkotlinx/coroutines/sync/MutexImpl;

    .line 1302
    .line 1303
    const/16 v10, 0xa

    .line 1304
    .line 1305
    iput v10, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->label:I

    .line 1306
    .line 1307
    move-object/from16 v10, v21

    .line 1308
    .line 1309
    invoke-interface {v10, v1, v5}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 1313
    if-ne v1, v6, :cond_17

    .line 1314
    .line 1315
    goto/16 :goto_1b

    .line 1316
    .line 1317
    :cond_17
    move-object v1, v4

    .line 1318
    move-object v4, v7

    .line 1319
    move-object v7, v11

    .line 1320
    move-object v11, v0

    .line 1321
    move-object v0, v2

    .line 1322
    move-object v2, v9

    .line 1323
    :goto_17
    invoke-interface {v1, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1324
    .line 1325
    .line 1326
    instance-of v1, v4, Landroidx/paging/PagingSource$LoadParams$Prepend;

    .line 1327
    .line 1328
    if-eqz v1, :cond_18

    .line 1329
    .line 1330
    move-object v1, v2

    .line 1331
    check-cast v1, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 1332
    .line 1333
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1334
    .line 1335
    .line 1336
    :cond_18
    instance-of v1, v4, Landroidx/paging/PagingSource$LoadParams$Append;

    .line 1337
    .line 1338
    if-eqz v1, :cond_19

    .line 1339
    .line 1340
    check-cast v2, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 1341
    .line 1342
    iget-object v1, v2, Landroidx/paging/PagingSource$LoadResult$Page;->nextKey:Ljava/lang/Object;

    .line 1343
    .line 1344
    :cond_19
    move-object v2, v0

    .line 1345
    move-object v0, v8

    .line 1346
    move-object v3, v10

    .line 1347
    move-object/from16 v9, v20

    .line 1348
    .line 1349
    goto/16 :goto_c

    .line 1350
    .line 1351
    :goto_18
    invoke-interface {v1, v2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1352
    .line 1353
    .line 1354
    throw v0

    .line 1355
    :catchall_8
    move-exception v0

    .line 1356
    const/4 v2, 0x0

    .line 1357
    invoke-interface {v8, v2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1358
    .line 1359
    .line 1360
    throw v0

    .line 1361
    :cond_1a
    sget-object v0, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    .line 1362
    .line 1363
    if-ne v1, v0, :cond_1b

    .line 1364
    .line 1365
    const-string v0, "prevKey"

    .line 1366
    .line 1367
    goto :goto_19

    .line 1368
    :cond_1b
    const-string v0, "nextKey"

    .line 1369
    .line 1370
    :goto_19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1371
    .line 1372
    const-string v2, "The same value, "

    .line 1373
    .line 1374
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1375
    .line 1376
    .line 1377
    iget-object v2, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1378
    .line 1379
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1380
    .line 1381
    .line 1382
    const-string v2, ", was passed as the "

    .line 1383
    .line 1384
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1385
    .line 1386
    .line 1387
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1388
    .line 1389
    .line 1390
    const-string v0, " in two\n                            | sequential Pages loaded from a PagingSource. Re-using load keys in\n                            | PagingSource is often an error, and must be explicitly enabled by\n                            | overriding PagingSource.keyReuseSupported.\n                            "

    .line 1391
    .line 1392
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1393
    .line 1394
    .line 1395
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v0

    .line 1399
    invoke-static {v0}, Lkotlin/text/StringsKt__IndentKt;->trimMargin$default(Ljava/lang/String;)Ljava/lang/String;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v0

    .line 1403
    invoke-static {v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;)V

    .line 1404
    .line 1405
    .line 1406
    const/4 v2, 0x0

    .line 1407
    return-object v2

    .line 1408
    :cond_1c
    move-object v8, v0

    .line 1409
    const/4 v2, 0x0

    .line 1410
    instance-of v0, v4, Landroidx/paging/PagingSource$LoadResult$Error;

    .line 1411
    .line 1412
    if-eqz v0, :cond_20

    .line 1413
    .line 1414
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 1415
    .line 1416
    if-eqz v0, :cond_1d

    .line 1417
    .line 1418
    const/4 v9, 0x2

    .line 1419
    invoke-static {v14, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1420
    .line 1421
    .line 1422
    move-result v0

    .line 1423
    if-eqz v0, :cond_1d

    .line 1424
    .line 1425
    iget-object v0, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1426
    .line 1427
    invoke-static {v1, v0, v4}, Landroidx/paging/PageFetcherSnapshot;->loadResultLog(Landroidx/paging/LoadType;Ljava/lang/Object;Landroidx/paging/PagingSource$LoadResult;)Ljava/lang/String;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v0

    .line 1431
    invoke-static {v14, v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1432
    .line 1433
    .line 1434
    :cond_1d
    iget-object v0, v12, Landroidx/paging/PageFetcherSnapshotState$Holder;->lock:Lkotlinx/coroutines/sync/MutexImpl;

    .line 1435
    .line 1436
    iput-object v1, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$0:Landroidx/paging/LoadType;

    .line 1437
    .line 1438
    iput-object v11, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$1:Landroidx/paging/GenerationalViewportHint;

    .line 1439
    .line 1440
    iput-object v4, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$2:Ljava/lang/Object;

    .line 1441
    .line 1442
    iput-object v12, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$3:Ljava/lang/Object;

    .line 1443
    .line 1444
    iput-object v0, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$4:Ljava/lang/Object;

    .line 1445
    .line 1446
    iput-object v2, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$5:Ljava/lang/Object;

    .line 1447
    .line 1448
    const/4 v2, 0x6

    .line 1449
    iput v2, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->label:I

    .line 1450
    .line 1451
    invoke-virtual {v0, v5}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1452
    .line 1453
    .line 1454
    move-result-object v2

    .line 1455
    if-ne v2, v6, :cond_1e

    .line 1456
    .line 1457
    goto :goto_1b

    .line 1458
    :cond_1e
    move-object v2, v4

    .line 1459
    move-object v3, v11

    .line 1460
    move-object v4, v1

    .line 1461
    move-object v1, v0

    .line 1462
    :goto_1a
    :try_start_9
    iget-object v0, v12, Landroidx/paging/PageFetcherSnapshotState$Holder;->state:Landroidx/paging/PageFetcherSnapshotState;

    .line 1463
    .line 1464
    new-instance v7, Landroidx/paging/LoadState$Error;

    .line 1465
    .line 1466
    check-cast v2, Landroidx/paging/PagingSource$LoadResult$Error;

    .line 1467
    .line 1468
    iget-object v2, v2, Landroidx/paging/PagingSource$LoadResult$Error;->throwable:Ljava/lang/Exception;

    .line 1469
    .line 1470
    invoke-direct {v7, v2}, Landroidx/paging/LoadState$Error;-><init>(Ljava/lang/Exception;)V

    .line 1471
    .line 1472
    .line 1473
    iput-object v4, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$0:Landroidx/paging/LoadType;

    .line 1474
    .line 1475
    iput-object v3, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$1:Landroidx/paging/GenerationalViewportHint;

    .line 1476
    .line 1477
    iput-object v1, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$2:Ljava/lang/Object;

    .line 1478
    .line 1479
    iput-object v0, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$3:Ljava/lang/Object;

    .line 1480
    .line 1481
    const/4 v2, 0x0

    .line 1482
    iput-object v2, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->L$4:Ljava/lang/Object;

    .line 1483
    .line 1484
    const/4 v2, 0x7

    .line 1485
    iput v2, v5, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->label:I

    .line 1486
    .line 1487
    invoke-virtual {v8, v0, v4, v7, v5}, Landroidx/paging/PageFetcherSnapshot;->setError(Landroidx/paging/PageFetcherSnapshotState;Landroidx/paging/LoadType;Landroidx/paging/LoadState$Error;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1488
    .line 1489
    .line 1490
    move-result-object v2

    .line 1491
    if-ne v2, v6, :cond_1f

    .line 1492
    .line 1493
    :goto_1b
    return-object v6

    .line 1494
    :cond_1f
    move-object v2, v3

    .line 1495
    move-object v3, v4

    .line 1496
    :goto_1c
    iget-object v0, v0, Landroidx/paging/PageFetcherSnapshotState;->failedHintsByLoadType:Ljava/util/LinkedHashMap;

    .line 1497
    .line 1498
    iget-object v2, v2, Landroidx/paging/GenerationalViewportHint;->hint:Landroidx/paging/ViewportHint;

    .line 1499
    .line 1500
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1501
    .line 1502
    .line 1503
    const/4 v2, 0x0

    .line 1504
    invoke-interface {v1, v2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1505
    .line 1506
    .line 1507
    return-object v18

    .line 1508
    :goto_1d
    invoke-interface {v1, v2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1509
    .line 1510
    .line 1511
    throw v0

    .line 1512
    :cond_20
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1513
    .line 1514
    .line 1515
    return-object v2

    .line 1516
    :cond_21
    return-object v18

    .line 1517
    :goto_1e
    invoke-interface {v4, v2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1518
    .line 1519
    .line 1520
    throw v0

    .line 1521
    :cond_22
    move-object/from16 v19, v10

    .line 1522
    .line 1523
    :try_start_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1524
    .line 1525
    move-object/from16 v2, v19

    .line 1526
    .line 1527
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1528
    .line 1529
    .line 1530
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 1531
    :goto_1f
    invoke-interface {v1, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1532
    .line 1533
    .line 1534
    throw v0

    .line 1535
    :cond_23
    move-object v2, v10

    .line 1536
    const/4 v3, 0x0

    .line 1537
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 1538
    .line 1539
    .line 1540
    return-object v3

    .line 1541
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

.method public final forceSetHint(Landroidx/paging/LoadType;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 12

    .line 1
    instance-of v0, p2, Landroidx/paging/PageFetcherSnapshot$forceSetHint$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/paging/PageFetcherSnapshot$forceSetHint$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/paging/PageFetcherSnapshot$forceSetHint$1;->label:I

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
    iput v1, v0, Landroidx/paging/PageFetcherSnapshot$forceSetHint$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/paging/PageFetcherSnapshot$forceSetHint$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/paging/PageFetcherSnapshot$forceSetHint$1;-><init>(Landroidx/paging/PageFetcherSnapshot;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/paging/PageFetcherSnapshot$forceSetHint$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/paging/PageFetcherSnapshot$forceSetHint$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v3, :cond_1

    .line 36
    .line 37
    iget-object p1, v0, Landroidx/paging/PageFetcherSnapshot$forceSetHint$1;->L$2:Lkotlinx/coroutines/sync/MutexImpl;

    .line 38
    .line 39
    iget-object v1, v0, Landroidx/paging/PageFetcherSnapshot$forceSetHint$1;->L$1:Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 40
    .line 41
    iget-object v0, v0, Landroidx/paging/PageFetcherSnapshot$forceSetHint$1;->L$0:Landroidx/paging/LoadType;

    .line 42
    .line 43
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    move-object v2, p1

    .line 47
    move-object p1, v0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v4

    .line 55
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    sget-object p2, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    .line 59
    .line 60
    if-eq p1, p2, :cond_5

    .line 61
    .line 62
    iget-object p2, p0, Landroidx/paging/PageFetcherSnapshot;->stateHolder:Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 63
    .line 64
    iget-object v2, p2, Landroidx/paging/PageFetcherSnapshotState$Holder;->lock:Lkotlinx/coroutines/sync/MutexImpl;

    .line 65
    .line 66
    iput-object p1, v0, Landroidx/paging/PageFetcherSnapshot$forceSetHint$1;->L$0:Landroidx/paging/LoadType;

    .line 67
    .line 68
    iput-object p2, v0, Landroidx/paging/PageFetcherSnapshot$forceSetHint$1;->L$1:Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 69
    .line 70
    iput-object v2, v0, Landroidx/paging/PageFetcherSnapshot$forceSetHint$1;->L$2:Lkotlinx/coroutines/sync/MutexImpl;

    .line 71
    .line 72
    iput v3, v0, Landroidx/paging/PageFetcherSnapshot$forceSetHint$1;->label:I

    .line 73
    .line 74
    invoke-virtual {v2, v0}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-ne v0, v1, :cond_3

    .line 79
    .line 80
    return-object v1

    .line 81
    :cond_3
    move-object v1, p2

    .line 82
    :goto_1
    :try_start_0
    iget-object p2, v1, Landroidx/paging/PageFetcherSnapshotState$Holder;->state:Landroidx/paging/PageFetcherSnapshotState;

    .line 83
    .line 84
    iget v0, p2, Landroidx/paging/PageFetcherSnapshotState;->initialPageIndex:I

    .line 85
    .line 86
    iget-object v1, p2, Landroidx/paging/PageFetcherSnapshotState;->pages:Ljava/util/ArrayList;

    .line 87
    .line 88
    neg-int v6, v0

    .line 89
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    iget v5, p2, Landroidx/paging/PageFetcherSnapshotState;->initialPageIndex:I

    .line 94
    .line 95
    sub-int/2addr v0, v5

    .line 96
    add-int/lit8 v11, v0, -0x1

    .line 97
    .line 98
    sget-object v0, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    .line 99
    .line 100
    if-ne p1, v0, :cond_4

    .line 101
    .line 102
    new-instance v5, Landroidx/paging/ViewportHint$Access;

    .line 103
    .line 104
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 109
    .line 110
    iget-object v0, v0, Landroidx/paging/PagingSource$LoadResult$Page;->data:Ljava/util/List;

    .line 111
    .line 112
    invoke-static {v0}, Landroidx/room/Room;->getLastIndex(Ljava/util/List;)I

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    invoke-virtual {p2}, Landroidx/paging/PageFetcherSnapshotState;->getStorageCount$paging_common()I

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    add-int/lit8 v8, p2, -0x1

    .line 121
    .line 122
    const/4 v9, 0x0

    .line 123
    move v0, v11

    .line 124
    move v10, v6

    .line 125
    move v6, v0

    .line 126
    invoke-direct/range {v5 .. v11}, Landroidx/paging/ViewportHint$Access;-><init>(IIIIII)V

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :catchall_0
    move-exception v0

    .line 131
    move-object p0, v0

    .line 132
    goto :goto_3

    .line 133
    :cond_4
    move v0, v11

    .line 134
    new-instance v5, Landroidx/paging/ViewportHint$Access;

    .line 135
    .line 136
    invoke-virtual {p2}, Landroidx/paging/PageFetcherSnapshotState;->getStorageCount$paging_common()I

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    add-int/lit8 v9, p2, -0x1

    .line 141
    .line 142
    const/4 v7, 0x0

    .line 143
    const/4 v8, 0x0

    .line 144
    move v10, v6

    .line 145
    move v11, v0

    .line 146
    invoke-direct/range {v5 .. v11}, Landroidx/paging/ViewportHint$Access;-><init>(IIIIII)V

    .line 147
    .line 148
    .line 149
    :goto_2
    iget-object p0, p0, Landroidx/paging/PageFetcherSnapshot;->hintHandler:Landroidx/paging/HintHandler;

    .line 150
    .line 151
    invoke-virtual {p0, p1, v5}, Landroidx/paging/HintHandler;->forceSetHint(Landroidx/paging/LoadType;Landroidx/paging/ViewportHint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .line 153
    .line 154
    invoke-interface {v2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 158
    .line 159
    return-object p0

    .line 160
    :goto_3
    invoke-interface {v2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    throw p0

    .line 164
    :cond_5
    const-string p0, "Called for REFRESH but this should only be called for either APPEND or PREPEND loads. This error indicates a bug in the Paging library. Please file a bug report in Buganizer."

    .line 165
    .line 166
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    return-object v4
.end method

.method public final getLoadKey$paging_common(Landroidx/paging/PagingSource$LoadResult$Page;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Landroidx/paging/PageFetcherSnapshot$getLoadKey$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/paging/PageFetcherSnapshot$getLoadKey$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/paging/PageFetcherSnapshot$getLoadKey$1;->label:I

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
    iput v1, v0, Landroidx/paging/PageFetcherSnapshot$getLoadKey$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/paging/PageFetcherSnapshot$getLoadKey$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/paging/PageFetcherSnapshot$getLoadKey$1;-><init>(Landroidx/paging/PageFetcherSnapshot;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/paging/PageFetcherSnapshot$getLoadKey$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/paging/PageFetcherSnapshot$getLoadKey$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v3, :cond_1

    .line 36
    .line 37
    iget-object p0, v0, Landroidx/paging/PageFetcherSnapshot$getLoadKey$1;->L$2:Lkotlinx/coroutines/sync/MutexImpl;

    .line 38
    .line 39
    iget-object p1, v0, Landroidx/paging/PageFetcherSnapshot$getLoadKey$1;->L$1:Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 40
    .line 41
    iget-object v0, v0, Landroidx/paging/PageFetcherSnapshot$getLoadKey$1;->L$0:Landroidx/paging/PagingSource$LoadResult$Page;

    .line 42
    .line 43
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v4

    .line 53
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Landroidx/paging/PageFetcherSnapshot;->stateHolder:Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 57
    .line 58
    iget-object p2, p0, Landroidx/paging/PageFetcherSnapshotState$Holder;->lock:Lkotlinx/coroutines/sync/MutexImpl;

    .line 59
    .line 60
    iput-object p1, v0, Landroidx/paging/PageFetcherSnapshot$getLoadKey$1;->L$0:Landroidx/paging/PagingSource$LoadResult$Page;

    .line 61
    .line 62
    iput-object p0, v0, Landroidx/paging/PageFetcherSnapshot$getLoadKey$1;->L$1:Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 63
    .line 64
    iput-object p2, v0, Landroidx/paging/PageFetcherSnapshot$getLoadKey$1;->L$2:Lkotlinx/coroutines/sync/MutexImpl;

    .line 65
    .line 66
    iput v3, v0, Landroidx/paging/PageFetcherSnapshot$getLoadKey$1;->label:I

    .line 67
    .line 68
    invoke-virtual {p2, v0}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-ne v0, v1, :cond_3

    .line 73
    .line 74
    return-object v1

    .line 75
    :cond_3
    move-object v0, p1

    .line 76
    move-object p1, p0

    .line 77
    move-object p0, p2

    .line 78
    :goto_1
    :try_start_0
    iget-object p1, p1, Landroidx/paging/PageFetcherSnapshotState$Holder;->state:Landroidx/paging/PageFetcherSnapshotState;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Landroidx/paging/PagingSource$LoadResult$Page;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    iget-object p1, p1, Landroidx/paging/PageFetcherSnapshotState;->pageKeys:Ljava/util/LinkedHashMap;

    .line 88
    .line 89
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    goto :goto_2

    .line 108
    :cond_4
    const-string p1, "Load key not found for Page "

    .line 109
    .line 110
    const-string p2, ". This likely indicates an error in the library. Please file a bug in the Buganizer."

    .line 111
    .line 112
    invoke-static {v0, p2, p1}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    .line 115
    move-object p1, v4

    .line 116
    :goto_2
    invoke-interface {p0, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    return-object p1

    .line 120
    :catchall_0
    move-exception p1

    .line 121
    invoke-interface {p0, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    throw p1
.end method

.method public final loadParams(Landroidx/paging/LoadType;Ljava/lang/Object;)Landroidx/paging/PagingSource$LoadParams;
    .locals 2

    .line 1
    sget-object v0, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Landroidx/paging/PageFetcherSnapshot;->initialLoadSize:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Landroidx/paging/PageFetcherSnapshot;->config:Landroidx/paging/PagingConfig;

    .line 9
    .line 10
    iget p0, p0, Landroidx/paging/PagingConfig;->pageSize:I

    .line 11
    .line 12
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget-object v0, Landroidx/paging/PagingSource$LoadParams$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    aget p1, v0, p1

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    if-eq p1, v0, :cond_5

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    const/4 v1, 0x0

    .line 28
    if-eq p1, v0, :cond_3

    .line 29
    .line 30
    const/4 v0, 0x3

    .line 31
    if-ne p1, v0, :cond_2

    .line 32
    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    new-instance p1, Landroidx/paging/PagingSource$LoadParams$Append;

    .line 36
    .line 37
    invoke-direct {p1, p0, p2}, Landroidx/paging/PagingSource$LoadParams$Append;-><init>(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_1
    const-string p0, "key cannot be null for append"

    .line 42
    .line 43
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v1

    .line 47
    :cond_2
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 48
    .line 49
    .line 50
    return-object v1

    .line 51
    :cond_3
    if-eqz p2, :cond_4

    .line 52
    .line 53
    new-instance p1, Landroidx/paging/PagingSource$LoadParams$Prepend;

    .line 54
    .line 55
    invoke-direct {p1, p0, p2}, Landroidx/paging/PagingSource$LoadParams$Prepend;-><init>(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-object p1

    .line 59
    :cond_4
    const-string p0, "key cannot be null for prepend"

    .line 60
    .line 61
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-object v1

    .line 65
    :cond_5
    new-instance p1, Landroidx/paging/PagingSource$LoadParams$Refresh;

    .line 66
    .line 67
    invoke-direct {p1, p0, p2}, Landroidx/paging/PagingSource$LoadParams$Refresh;-><init>(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return-object p1
.end method

.method public final nextLoadKeyOrNull(Landroidx/paging/PageFetcherSnapshotState;Landroidx/paging/LoadType;II)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/paging/PageFetcherSnapshotState$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    aget v0, v0, v1

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eq v0, v1, :cond_6

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 24
    .line 25
    .line 26
    return-object v2

    .line 27
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    iget-object p3, p1, Landroidx/paging/PageFetcherSnapshotState;->sourceLoadStates:Lcom/caverock/androidsvg/SVG;

    .line 31
    .line 32
    invoke-virtual {p3, p2}, Lcom/caverock/androidsvg/SVG;->get(Landroidx/paging/LoadType;)Landroidx/paging/LoadState;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    instance-of p3, p3, Landroidx/paging/LoadState$Error;

    .line 37
    .line 38
    if-eqz p3, :cond_3

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    iget-object p0, p0, Landroidx/paging/PageFetcherSnapshot;->config:Landroidx/paging/PagingConfig;

    .line 42
    .line 43
    iget p0, p0, Landroidx/paging/PagingConfig;->prefetchDistance:I

    .line 44
    .line 45
    if-lt p4, p0, :cond_4

    .line 46
    .line 47
    :goto_1
    return-object v2

    .line 48
    :cond_4
    sget-object p0, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    .line 49
    .line 50
    iget-object p1, p1, Landroidx/paging/PageFetcherSnapshotState;->pages:Ljava/util/ArrayList;

    .line 51
    .line 52
    if-ne p2, p0, :cond_5

    .line 53
    .line 54
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    return-object v2

    .line 64
    :cond_5
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    check-cast p0, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 69
    .line 70
    iget-object p0, p0, Landroidx/paging/PagingSource$LoadResult$Page;->nextKey:Ljava/lang/Object;

    .line 71
    .line 72
    return-object p0

    .line 73
    :cond_6
    const-string p0, "Cannot get loadId for loadType: REFRESH"

    .line 74
    .line 75
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-object v2
.end method

.method public final retryLoadError(Landroidx/paging/LoadType;Landroidx/paging/ViewportHint;Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Landroidx/paging/PageFetcherSnapshot$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, p3}, Landroidx/paging/PageFetcherSnapshot;->doInitialLoad(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 19
    .line 20
    if-ne p0, p1, :cond_0

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    return-object v2

    .line 24
    :cond_1
    if-eqz p2, :cond_2

    .line 25
    .line 26
    iget-object p0, p0, Landroidx/paging/PageFetcherSnapshot;->hintHandler:Landroidx/paging/HintHandler;

    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Landroidx/paging/HintHandler;->forceSetHint(Landroidx/paging/LoadType;Landroidx/paging/ViewportHint;)V

    .line 29
    .line 30
    .line 31
    return-object v2

    .line 32
    :cond_2
    const-string p0, "Cannot retry APPEND / PREPEND load on PagingSource without ViewportHint"

    .line 33
    .line 34
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    return-object p0
.end method

.method public final setError(Landroidx/paging/PageFetcherSnapshotState;Landroidx/paging/LoadType;Landroidx/paging/LoadState$Error;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p1, p1, Landroidx/paging/PageFetcherSnapshotState;->sourceLoadStates:Lcom/caverock/androidsvg/SVG;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/caverock/androidsvg/SVG;->get(Landroidx/paging/LoadType;)Landroidx/paging/LoadState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, p2, p3}, Lcom/caverock/androidsvg/SVG;->set(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    .line 14
    .line 15
    .line 16
    new-instance p2, Landroidx/paging/PageEvent$LoadStateUpdate;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG;->snapshot()Landroidx/paging/LoadStates;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 p3, 0x0

    .line 23
    invoke-direct {p2, p1, p3}, Landroidx/paging/PageEvent$LoadStateUpdate;-><init>(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Landroidx/paging/PageFetcherSnapshot;->pageEventCh:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 27
    .line 28
    invoke-interface {p0, p2, p4}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 33
    .line 34
    if-ne p0, p1, :cond_0

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 38
    .line 39
    return-object p0
.end method

.method public final setLoading(Landroidx/paging/PageFetcherSnapshotState;Landroidx/paging/LoadType;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p1, p1, Landroidx/paging/PageFetcherSnapshotState;->sourceLoadStates:Lcom/caverock/androidsvg/SVG;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/caverock/androidsvg/SVG;->get(Landroidx/paging/LoadType;)Landroidx/paging/LoadState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Landroidx/paging/LoadState$Loading;->INSTANCE:Landroidx/paging/LoadState$Loading;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1, p2, v1}, Lcom/caverock/androidsvg/SVG;->set(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    .line 16
    .line 17
    .line 18
    new-instance p2, Landroidx/paging/PageEvent$LoadStateUpdate;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG;->snapshot()Landroidx/paging/LoadStates;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-direct {p2, p1, v0}, Landroidx/paging/PageEvent$LoadStateUpdate;-><init>(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Landroidx/paging/PageFetcherSnapshot;->pageEventCh:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 29
    .line 30
    invoke-interface {p0, p2, p3}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 35
    .line 36
    if-ne p0, p1, :cond_0

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method

.method public final startConsumingHints(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 4

    .line 1
    new-instance v0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, p0, v2, v1}, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;-><init>(Landroidx/paging/PageFetcherSnapshot;Lkotlin/coroutines/Continuation;I)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    invoke-static {p1, v2, v2, v0, v1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-direct {v0, p0, v2, v3}, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;-><init>(Landroidx/paging/PageFetcherSnapshot;Lkotlin/coroutines/Continuation;I)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v2, v2, v0, v1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 19
    .line 20
    .line 21
    return-void
.end method
