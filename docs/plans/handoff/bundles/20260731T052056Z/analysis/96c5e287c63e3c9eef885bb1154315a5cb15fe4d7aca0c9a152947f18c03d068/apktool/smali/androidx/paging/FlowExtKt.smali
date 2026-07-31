.class public abstract Landroidx/paging/FlowExtKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final NULL:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/paging/FlowExtKt;->NULL:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public static final addSeparatorPage(Ljava/util/List;Ljava/lang/Object;Landroidx/paging/TransformablePage;Landroidx/paging/TransformablePage;II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget-object p2, p2, Landroidx/paging/TransformablePage;->originalPageOffsets:[I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object p2, v0

    .line 11
    :goto_0
    if-eqz p3, :cond_1

    .line 12
    .line 13
    iget-object v0, p3, Landroidx/paging/TransformablePage;->originalPageOffsets:[I

    .line 14
    .line 15
    :cond_1
    if-eqz p2, :cond_3

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    invoke-static {p2, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->plus([I[I)[I

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    new-instance p3, Ljava/util/LinkedHashSet;

    .line 24
    .line 25
    array-length v0, p2

    .line 26
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-direct {p3, v0}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 31
    .line 32
    .line 33
    array-length v0, p2

    .line 34
    const/4 v1, 0x0

    .line 35
    :goto_1
    if-ge v1, v0, :cond_2

    .line 36
    .line 37
    aget v2, p2, v1

    .line 38
    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/List;)[I

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    if-nez p2, :cond_4

    .line 63
    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    move-object p2, v0

    .line 67
    goto :goto_2

    .line 68
    :cond_4
    if-eqz p2, :cond_6

    .line 69
    .line 70
    if-nez v0, :cond_6

    .line 71
    .line 72
    :goto_2
    if-nez p1, :cond_5

    .line 73
    .line 74
    return-void

    .line 75
    :cond_5
    new-instance p3, Landroidx/paging/TransformablePage;

    .line 76
    .line 77
    invoke-static {p1}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object p5

    .line 85
    invoke-static {p5}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object p5

    .line 89
    invoke-direct {p3, p2, p1, p4, p5}, Landroidx/paging/TransformablePage;-><init>([ILjava/util/List;ILjava/util/List;)V

    .line 90
    .line 91
    .line 92
    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_6
    const-string p0, "Separator page expected adjacentPageBefore or adjacentPageAfter, but both were null."

    .line 97
    .line 98
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public static final cachedIn(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;)Lkotlinx/coroutines/flow/ReadonlySharedFlow;
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, v1, p1, v2}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    new-instance v3, Landroidx/paging/FlowExtKt$simpleRunningReduce$1;

    .line 12
    .line 13
    invoke-direct {v3, p0, v0, v2, v1}, Landroidx/paging/FlowExtKt$simpleRunningReduce$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v3}, Landroidx/paging/FlowExtKt;->simpleChannelFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    new-instance v0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;

    .line 21
    .line 22
    const/4 v3, 0x3

    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-direct {v0, v3, v4, v2}, Landroidx/paging/CachedPagingDataKt$cachedIn$2;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    new-instance v5, Landroidx/paging/FlowExtKt$simpleRunningReduce$1;

    .line 31
    .line 32
    invoke-direct {v5, p0, v0, v2, v4}, Landroidx/paging/FlowExtKt$simpleRunningReduce$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;I)V

    .line 33
    .line 34
    .line 35
    new-instance p0, Lkotlinx/coroutines/flow/SafeFlow;

    .line 36
    .line 37
    invoke-direct {p0, v4, v5}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Lkotlinx/coroutines/flow/SafeFlow;

    .line 41
    .line 42
    invoke-direct {v0, v1, p0}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    new-instance p0, Landroidx/paging/CachedPagingDataKt$cachedIn$4;

    .line 46
    .line 47
    const/4 v5, 0x2

    .line 48
    invoke-direct {p0, v5, v4, v2}, Landroidx/paging/CachedPagingDataKt$cachedIn$4;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 49
    .line 50
    .line 51
    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    .line 52
    .line 53
    invoke-direct {v5, p0, v0}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    .line 54
    .line 55
    .line 56
    new-instance p0, Landroidx/paging/CachedPagingDataKt$cachedIn$5;

    .line 57
    .line 58
    invoke-direct {p0, v3, v4, v2}, Landroidx/paging/CachedPagingDataKt$cachedIn$5;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;

    .line 62
    .line 63
    invoke-direct {v0, v5, p0}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->configureSharing$FlowKt__ShareKt(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/SharingConfig;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    iget v0, p0, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 71
    .line 72
    iget-object v2, p0, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v2, Lkotlinx/coroutines/channels/BufferOverflow;

    .line 75
    .line 76
    invoke-static {v1, v0, v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableSharedFlow(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    .line 83
    .line 84
    iget-object p0, p0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 85
    .line 86
    move-object v5, p0

    .line 87
    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    .line 88
    .line 89
    sget-object v7, Lkotlinx/coroutines/flow/StateFlowKt;->NO_VALUE:Lkotlinx/coroutines/internal/Symbol;

    .line 90
    .line 91
    sget-object p0, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedLazily;

    .line 92
    .line 93
    sget-object v4, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Lazily:Lkotlinx/coroutines/flow/StartedLazily;

    .line 94
    .line 95
    if-eq v4, p0, :cond_0

    .line 96
    .line 97
    sget-object p0, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    sget-object p0, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    .line 101
    .line 102
    :goto_0
    new-instance v3, Landroidx/paging/FlowExtKt$simpleScan$1;

    .line 103
    .line 104
    const/4 v8, 0x0

    .line 105
    invoke-direct/range {v3 .. v8}, Landroidx/paging/FlowExtKt$simpleScan$1;-><init>(Lkotlinx/coroutines/flow/SharingStarted;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/MutableSharedFlow;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 106
    .line 107
    .line 108
    invoke-static {p1, v0, p0, v3}, Lkotlinx/coroutines/AwaitKt;->launch(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 109
    .line 110
    .line 111
    new-instance p0, Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 112
    .line 113
    invoke-direct {p0, v6}, Lkotlinx/coroutines/flow/ReadonlySharedFlow;-><init>(Lkotlinx/coroutines/flow/MutableSharedFlow;)V

    .line 114
    .line 115
    .line 116
    return-object p0
.end method

.method public static final computeHelperState(Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadState;)Landroidx/paging/LoadState;
    .locals 0

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    return-object p2

    .line 4
    :cond_0
    instance-of p2, p0, Landroidx/paging/LoadState$Loading;

    .line 5
    .line 6
    if-eqz p2, :cond_3

    .line 7
    .line 8
    instance-of p1, p1, Landroidx/paging/LoadState$NotLoading;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    instance-of p1, p3, Landroidx/paging/LoadState$NotLoading;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    return-object p3

    .line 17
    :cond_1
    instance-of p1, p3, Landroidx/paging/LoadState$Error;

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    return-object p3

    .line 22
    :cond_2
    return-object p0

    .line 23
    :cond_3
    return-object p3
.end method

.method public static final filter(Landroidx/paging/PagingData;Lkotlin/jvm/functions/Function2;)Landroidx/paging/PagingData;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/paging/PagingData;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/paging/PagingData;->flow:Lkotlinx/coroutines/flow/Flow;

    .line 7
    .line 8
    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-direct {v2, v1, p1, v3}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Landroidx/paging/PagingData;->uiReceiver:Landroidx/paging/UiReceiver;

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/paging/PagingData;->hintReceiver:Landroidx/paging/HintHandler;

    .line 17
    .line 18
    sget-object v1, Landroidx/paging/PagingData$1;->INSTANCE:Landroidx/paging/PagingData$1;

    .line 19
    .line 20
    invoke-direct {v0, v2, p1, p0, v1}, Landroidx/paging/PagingData;-><init>(Lkotlinx/coroutines/flow/Flow;Landroidx/paging/UiReceiver;Landroidx/paging/HintHandler;Lkotlin/jvm/functions/Function0;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public static final insertInternalSeparators(Landroidx/paging/TransformablePage;Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p2, Landroidx/paging/SeparatorsKt$insertInternalSeparators$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/paging/SeparatorsKt$insertInternalSeparators$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/paging/SeparatorsKt$insertInternalSeparators$1;->label:I

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
    iput v1, v0, Landroidx/paging/SeparatorsKt$insertInternalSeparators$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/paging/SeparatorsKt$insertInternalSeparators$1;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/paging/SeparatorsKt$insertInternalSeparators$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/paging/SeparatorsKt$insertInternalSeparators$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    iget p0, v0, Landroidx/paging/SeparatorsKt$insertInternalSeparators$1;->I$1:I

    .line 37
    .line 38
    iget p1, v0, Landroidx/paging/SeparatorsKt$insertInternalSeparators$1;->I$0:I

    .line 39
    .line 40
    iget-object v2, v0, Landroidx/paging/SeparatorsKt$insertInternalSeparators$1;->L$4:Ljava/lang/Object;

    .line 41
    .line 42
    iget-object v4, v0, Landroidx/paging/SeparatorsKt$insertInternalSeparators$1;->L$3:Ljava/util/ArrayList;

    .line 43
    .line 44
    iget-object v5, v0, Landroidx/paging/SeparatorsKt$insertInternalSeparators$1;->L$2:Ljava/util/ArrayList;

    .line 45
    .line 46
    iget-object v6, v0, Landroidx/paging/SeparatorsKt$insertInternalSeparators$1;->L$1:Lkotlin/jvm/functions/Function3;

    .line 47
    .line 48
    iget-object v7, v0, Landroidx/paging/SeparatorsKt$insertInternalSeparators$1;->L$0:Landroidx/paging/TransformablePage;

    .line 49
    .line 50
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    move-object v9, v4

    .line 54
    move-object v4, v0

    .line 55
    move-object v0, v6

    .line 56
    :goto_1
    move-object v6, v5

    .line 57
    move-object v5, v9

    .line 58
    goto/16 :goto_4

    .line 59
    .line 60
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 61
    .line 62
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/4 p0, 0x0

    .line 66
    return-object p0

    .line 67
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object p2, p0, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    return-object p0

    .line 79
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    add-int/lit8 v2, v2, 0x4

    .line 84
    .line 85
    new-instance v4, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    .line 89
    .line 90
    new-instance v5, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    .line 94
    .line 95
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Landroidx/paging/TransformablePage;->hintOriginalIndices:Ljava/util/List;

    .line 103
    .line 104
    if-eqz v2, :cond_4

    .line 105
    .line 106
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Ljava/lang/Number;

    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    goto :goto_2

    .line 117
    :cond_4
    const/4 v2, 0x0

    .line 118
    :goto_2
    new-instance v6, Ljava/lang/Integer;

    .line 119
    .line 120
    invoke-direct {v6, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    move-object v2, v5

    .line 131
    move-object v5, v4

    .line 132
    move-object v4, v2

    .line 133
    move-object v2, v0

    .line 134
    move-object v0, p1

    .line 135
    move-object p1, p0

    .line 136
    move p0, p2

    .line 137
    move p2, v3

    .line 138
    :goto_3
    if-ge p2, p0, :cond_7

    .line 139
    .line 140
    iget-object v6, p1, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 141
    .line 142
    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    iget-object v7, p1, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 147
    .line 148
    add-int/lit8 v8, p2, -0x1

    .line 149
    .line 150
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    iput-object p1, v2, Landroidx/paging/SeparatorsKt$insertInternalSeparators$1;->L$0:Landroidx/paging/TransformablePage;

    .line 155
    .line 156
    iput-object v0, v2, Landroidx/paging/SeparatorsKt$insertInternalSeparators$1;->L$1:Lkotlin/jvm/functions/Function3;

    .line 157
    .line 158
    iput-object v5, v2, Landroidx/paging/SeparatorsKt$insertInternalSeparators$1;->L$2:Ljava/util/ArrayList;

    .line 159
    .line 160
    iput-object v4, v2, Landroidx/paging/SeparatorsKt$insertInternalSeparators$1;->L$3:Ljava/util/ArrayList;

    .line 161
    .line 162
    iput-object v6, v2, Landroidx/paging/SeparatorsKt$insertInternalSeparators$1;->L$4:Ljava/lang/Object;

    .line 163
    .line 164
    iput p2, v2, Landroidx/paging/SeparatorsKt$insertInternalSeparators$1;->I$0:I

    .line 165
    .line 166
    iput p0, v2, Landroidx/paging/SeparatorsKt$insertInternalSeparators$1;->I$1:I

    .line 167
    .line 168
    iput v3, v2, Landroidx/paging/SeparatorsKt$insertInternalSeparators$1;->label:I

    .line 169
    .line 170
    invoke-interface {v0, v7, v6, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    if-ne v7, v1, :cond_5

    .line 175
    .line 176
    return-object v1

    .line 177
    :cond_5
    move-object v9, v7

    .line 178
    move-object v7, p1

    .line 179
    move p1, p2

    .line 180
    move-object p2, v9

    .line 181
    move-object v9, v4

    .line 182
    move-object v4, v2

    .line 183
    move-object v2, v6

    .line 184
    goto/16 :goto_1

    .line 185
    .line 186
    :goto_4
    if-eqz p2, :cond_6

    .line 187
    .line 188
    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    new-instance p2, Ljava/lang/Integer;

    .line 192
    .line 193
    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    :cond_6
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    new-instance p2, Ljava/lang/Integer;

    .line 203
    .line 204
    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    add-int/lit8 p2, p1, 0x1

    .line 211
    .line 212
    move-object v2, v4

    .line 213
    move-object v4, v5

    .line 214
    move-object v5, v6

    .line 215
    move-object p1, v7

    .line 216
    goto :goto_3

    .line 217
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 218
    .line 219
    .line 220
    move-result p0

    .line 221
    iget-object p2, p1, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 222
    .line 223
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 224
    .line 225
    .line 226
    move-result p2

    .line 227
    if-ne p0, p2, :cond_8

    .line 228
    .line 229
    return-object p1

    .line 230
    :cond_8
    new-instance p0, Landroidx/paging/TransformablePage;

    .line 231
    .line 232
    iget-object p2, p1, Landroidx/paging/TransformablePage;->originalPageOffsets:[I

    .line 233
    .line 234
    iget p1, p1, Landroidx/paging/TransformablePage;->hintOriginalPageOffset:I

    .line 235
    .line 236
    invoke-direct {p0, p2, v5, p1, v4}, Landroidx/paging/TransformablePage;-><init>([ILjava/util/List;ILjava/util/List;)V

    .line 237
    .line 238
    .line 239
    return-object p0
.end method

.method public static insertSeparators$default(Landroidx/paging/PagingData;Lkotlin/jvm/functions/Function3;)Landroidx/paging/PagingData;
    .locals 7

    .line 1
    sget-object v0, Landroidx/paging/TerminalSeparatorType;->FULLY_COMPLETE:Landroidx/paging/TerminalSeparatorType;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroidx/paging/PagingData;

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/paging/PagingData;->flow:Lkotlinx/coroutines/flow/Flow;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v3, Landroidx/paging/SeparatorState;

    .line 17
    .line 18
    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x3

    .line 22
    invoke-direct {v4, p1, v5, v6}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;-><init>(Lkotlin/Function;Lkotlin/coroutines/Continuation;I)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v3, v0, v4}, Landroidx/paging/SeparatorState;-><init>(Landroidx/paging/TerminalSeparatorType;Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-direct {p1, v0, v2, v3}, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroidx/paging/PagingData;->uiReceiver:Landroidx/paging/UiReceiver;

    .line 35
    .line 36
    iget-object p0, p0, Landroidx/paging/PagingData;->hintReceiver:Landroidx/paging/HintHandler;

    .line 37
    .line 38
    sget-object v2, Landroidx/paging/PagingData$1;->INSTANCE:Landroidx/paging/PagingData$1;

    .line 39
    .line 40
    invoke-direct {v1, p1, v0, p0, v2}, Landroidx/paging/PagingData;-><init>(Lkotlinx/coroutines/flow/Flow;Landroidx/paging/UiReceiver;Landroidx/paging/HintHandler;Lkotlin/jvm/functions/Function0;)V

    .line 41
    .line 42
    .line 43
    return-object v1
.end method

.method public static final map(Landroidx/paging/PagingData;Lkotlin/jvm/functions/Function2;)Landroidx/paging/PagingData;
    .locals 4

    .line 1
    new-instance v0, Landroidx/paging/PagingData;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/paging/PagingData;->flow:Lkotlinx/coroutines/flow/Flow;

    .line 4
    .line 5
    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    invoke-direct {v2, v1, p1, v3}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroidx/paging/PagingData;->uiReceiver:Landroidx/paging/UiReceiver;

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/paging/PagingData;->hintReceiver:Landroidx/paging/HintHandler;

    .line 14
    .line 15
    sget-object v1, Landroidx/paging/PagingData$1;->INSTANCE:Landroidx/paging/PagingData$1;

    .line 16
    .line 17
    invoke-direct {v0, v2, p1, p0, v1}, Landroidx/paging/PagingData;-><init>(Lkotlinx/coroutines/flow/Flow;Landroidx/paging/UiReceiver;Landroidx/paging/HintHandler;Lkotlin/jvm/functions/Function0;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public static final shouldPrioritizeOver(Landroidx/paging/ViewportHint;Landroidx/paging/ViewportHint;Landroidx/paging/LoadType;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    instance-of v1, p1, Landroidx/paging/ViewportHint$Initial;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    instance-of v1, p0, Landroidx/paging/ViewportHint$Access;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    return v0

    .line 20
    :cond_1
    instance-of v1, p0, Landroidx/paging/ViewportHint$Initial;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    instance-of v1, p1, Landroidx/paging/ViewportHint$Access;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    return v2

    .line 30
    :cond_2
    iget v1, p0, Landroidx/paging/ViewportHint;->originalPageOffsetFirst:I

    .line 31
    .line 32
    iget v3, p1, Landroidx/paging/ViewportHint;->originalPageOffsetFirst:I

    .line 33
    .line 34
    if-eq v1, v3, :cond_3

    .line 35
    .line 36
    return v0

    .line 37
    :cond_3
    iget v1, p0, Landroidx/paging/ViewportHint;->originalPageOffsetLast:I

    .line 38
    .line 39
    iget v3, p1, Landroidx/paging/ViewportHint;->originalPageOffsetLast:I

    .line 40
    .line 41
    if-eq v1, v3, :cond_4

    .line 42
    .line 43
    return v0

    .line 44
    :cond_4
    invoke-virtual {p1, p2}, Landroidx/paging/ViewportHint;->presentedItemsBeyondAnchor$paging_common(Landroidx/paging/LoadType;)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-virtual {p0, p2}, Landroidx/paging/ViewportHint;->presentedItemsBeyondAnchor$paging_common(Landroidx/paging/LoadType;)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-gt p1, p0, :cond_5

    .line 53
    .line 54
    return v2

    .line 55
    :cond_5
    return v0
.end method

.method public static final simpleChannelFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;
    .locals 3

    .line 1
    new-instance v0, Landroidx/paging/SimpleChannelFlowKt$simpleChannelFlow$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, p0, v1, v2}, Landroidx/paging/SimpleChannelFlowKt$simpleChannelFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;I)V

    .line 6
    .line 7
    .line 8
    new-instance p0, Lkotlinx/coroutines/flow/SafeFlow;

    .line 9
    .line 10
    invoke-direct {p0, v2, v0}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, -0x2

    .line 14
    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/StateFlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method
