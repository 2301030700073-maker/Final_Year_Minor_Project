.class public final Landroidx/paging/AsyncPagingDataDiffer$presenter$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public final _onPagesUpdatedFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final collectFromRunner:Landroidx/paging/HintHandler;

.field public final combinedLoadStatesCollection:Lcom/caverock/androidsvg/SVG;

.field public hintReceiver:Landroidx/paging/HintHandler;

.field public final inGetItem:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public volatile lastAccessedIndex:I

.field public volatile lastAccessedIndexUnfulfilled:Z

.field public final loadStateFlow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final mainContext:Lkotlin/coroutines/CoroutineContext;

.field public final onPagesUpdatedListeners:Lkotlin/collections/IndexingIterable;

.field public pageStore:Landroidx/paging/PageStore;

.field public final synthetic this$0:Ljava/lang/Object;

.field public uiReceiver:Landroidx/paging/UiReceiver;


# direct methods
.method public constructor <init>(Landroidx/paging/AsyncPagingDataDiffer;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 128
    invoke-direct {p0, p2, p1}, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;-><init>(Lkotlin/coroutines/CoroutineContext;Landroidx/paging/PagingData;)V

    return-void
.end method

.method public constructor <init>(Landroidx/paging/compose/LazyPagingItems;Lkotlin/coroutines/CoroutineContext;Landroidx/paging/PagingData;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->this$0:Ljava/lang/Object;

    .line 129
    invoke-direct {p0, p2, p3}, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;-><init>(Lkotlin/coroutines/CoroutineContext;Landroidx/paging/PagingData;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Landroidx/paging/PagingData;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->mainContext:Lkotlin/coroutines/CoroutineContext;

    .line 8
    .line 9
    new-instance p1, Landroidx/paging/PagingDataPresenter$InitialUiReceiver;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->uiReceiver:Landroidx/paging/UiReceiver;

    .line 15
    .line 16
    sget-object p1, Landroidx/paging/PageStore;->INITIAL:Landroidx/paging/PageStore;

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    iget-object p1, p2, Landroidx/paging/PagingData;->cachedPageEvent:Lkotlin/jvm/functions/Function0;

    .line 21
    .line 22
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroidx/paging/PageEvent$Insert;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    if-eqz p1, :cond_1

    .line 31
    .line 32
    new-instance v0, Landroidx/paging/PageStore;

    .line 33
    .line 34
    invoke-direct {v0, p1}, Landroidx/paging/PageStore;-><init>(Landroidx/paging/PageEvent$Insert;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    sget-object v0, Landroidx/paging/PageStore;->INITIAL:Landroidx/paging/PageStore;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    :goto_1
    iput-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->pageStore:Landroidx/paging/PageStore;

    .line 44
    .line 45
    new-instance p1, Lcom/caverock/androidsvg/SVG;

    .line 46
    .line 47
    const/16 v0, 0x16

    .line 48
    .line 49
    invoke-direct {p1, v0}, Lcom/caverock/androidsvg/SVG;-><init>(I)V

    .line 50
    .line 51
    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    iget-object p2, p2, Landroidx/paging/PagingData;->cachedPageEvent:Lkotlin/jvm/functions/Function0;

    .line 55
    .line 56
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    check-cast p2, Landroidx/paging/PageEvent$Insert;

    .line 61
    .line 62
    if-eqz p2, :cond_2

    .line 63
    .line 64
    iget-object v0, p2, Landroidx/paging/PageEvent$Insert;->sourceLoadStates:Landroidx/paging/LoadStates;

    .line 65
    .line 66
    iget-object p2, p2, Landroidx/paging/PageEvent$Insert;->mediatorLoadStates:Landroidx/paging/LoadStates;

    .line 67
    .line 68
    invoke-virtual {p1, v0, p2}, Lcom/caverock/androidsvg/SVG;->set(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->combinedLoadStatesCollection:Lcom/caverock/androidsvg/SVG;

    .line 72
    .line 73
    new-instance p2, Lkotlin/collections/IndexingIterable;

    .line 74
    .line 75
    invoke-direct {p2}, Lkotlin/collections/IndexingIterable;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object p2, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->onPagesUpdatedListeners:Lkotlin/collections/IndexingIterable;

    .line 79
    .line 80
    new-instance v0, Landroidx/paging/HintHandler;

    .line 81
    .line 82
    const/16 v1, 0x1c

    .line 83
    .line 84
    invoke-direct {v0, v1}, Landroidx/paging/HintHandler;-><init>(I)V

    .line 85
    .line 86
    .line 87
    iput-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->collectFromRunner:Landroidx/paging/HintHandler;

    .line 88
    .line 89
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 90
    .line 91
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iput-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->inGetItem:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 96
    .line 97
    iget-object p1, p1, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 100
    .line 101
    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->loadStateFlow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 102
    .line 103
    const/16 p1, 0x40

    .line 104
    .line 105
    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 106
    .line 107
    const/4 v1, 0x0

    .line 108
    invoke-static {v1, p1, v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableSharedFlow(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->_onPagesUpdatedFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 113
    .line 114
    new-instance p1, Landroidx/work/Worker$$ExternalSyntheticLambda0;

    .line 115
    .line 116
    const/4 v0, 0x3

    .line 117
    invoke-direct {p1, v0, p0}, Landroidx/work/Worker$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    iget-object p0, p2, Lkotlin/collections/IndexingIterable;->iteratorFactory:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 123
    .line 124
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->inGetItem:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2
    .line 3
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move-object v2, v1

    .line 8
    check-cast v2, Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->lastAccessedIndexUnfulfilled:Z

    .line 23
    .line 24
    iput p1, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->lastAccessedIndex:I

    .line 25
    .line 26
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const-string v0, "Paging"

    .line 32
    .line 33
    const/4 v2, 0x2

    .line 34
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v3, "Accessing item index["

    .line 43
    .line 44
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const/16 v3, 0x5d

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v0, v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->hintReceiver:Landroidx/paging/HintHandler;

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    iget-object v2, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->pageStore:Landroidx/paging/PageStore;

    .line 67
    .line 68
    invoke-virtual {v2, p1}, Landroidx/paging/PageStore;->createAccessHintForIndex(I)Landroidx/paging/ViewportHint$Access;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v0, v2}, Landroidx/paging/HintHandler;->processHint(Landroidx/paging/ViewportHint;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->pageStore:Landroidx/paging/PageStore;

    .line 76
    .line 77
    if-ltz p1, :cond_6

    .line 78
    .line 79
    invoke-virtual {v0}, Landroidx/paging/PageStore;->getSize()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-ge p1, v2, :cond_7

    .line 84
    .line 85
    iget v2, v0, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 86
    .line 87
    sub-int/2addr p1, v2

    .line 88
    if-ltz p1, :cond_4

    .line 89
    .line 90
    iget v2, v0, Landroidx/paging/PageStore;->dataCount:I

    .line 91
    .line 92
    if-lt p1, v2, :cond_3

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    invoke-virtual {v0, p1}, Landroidx/paging/PageStore;->getItem(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    :cond_4
    :goto_0
    move-object v2, v1

    .line 100
    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->inGetItem:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 101
    .line 102
    :cond_5
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    move-object v0, p1

    .line 107
    check-cast v0, Ljava/lang/Boolean;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 113
    .line 114
    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_5

    .line 119
    .line 120
    return-object v2

    .line 121
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    :cond_7
    const-string p0, "Index: "

    .line 125
    .line 126
    const-string v2, ", Size: "

    .line 127
    .line 128
    invoke-static {p1, p0, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {v0}, Landroidx/paging/PageStore;->getSize()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    invoke-static {p1, p0}, Landroidx/glance/session/TimeSource$Companion$$ExternalSyntheticLambda0;->m(ILjava/lang/StringBuilder;)V

    .line 137
    .line 138
    .line 139
    return-object v1
.end method

.method public final presentNewList(Ljava/util/List;IIZLandroidx/paging/LoadStates;Landroidx/paging/LoadStates;Landroidx/paging/HintHandler;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    move-object/from16 v6, p7

    .line 14
    .line 15
    move-object/from16 v7, p8

    .line 16
    .line 17
    const-string v8, "Paging"

    .line 18
    .line 19
    const-string/jumbo v9, "|)"

    .line 20
    .line 21
    .line 22
    const-string v10, "Presenting data (\n                            |   first item: "

    .line 23
    .line 24
    instance-of v11, v7, Landroidx/paging/PagingDataPresenter$presentNewList$1;

    .line 25
    .line 26
    if-eqz v11, :cond_0

    .line 27
    .line 28
    move-object v11, v7

    .line 29
    check-cast v11, Landroidx/paging/PagingDataPresenter$presentNewList$1;

    .line 30
    .line 31
    iget v12, v11, Landroidx/paging/PagingDataPresenter$presentNewList$1;->label:I

    .line 32
    .line 33
    const/high16 v13, -0x80000000

    .line 34
    .line 35
    and-int v14, v12, v13

    .line 36
    .line 37
    if-eqz v14, :cond_0

    .line 38
    .line 39
    sub-int/2addr v12, v13

    .line 40
    iput v12, v11, Landroidx/paging/PagingDataPresenter$presentNewList$1;->label:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance v11, Landroidx/paging/PagingDataPresenter$presentNewList$1;

    .line 44
    .line 45
    invoke-direct {v11, v1, v7}, Landroidx/paging/PagingDataPresenter$presentNewList$1;-><init>(Landroidx/paging/AsyncPagingDataDiffer$presenter$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    iget-object v7, v11, Landroidx/paging/PagingDataPresenter$presentNewList$1;->result:Ljava/lang/Object;

    .line 49
    .line 50
    sget-object v12, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 51
    .line 52
    iget v13, v11, Landroidx/paging/PagingDataPresenter$presentNewList$1;->label:I

    .line 53
    .line 54
    const/4 v14, 0x1

    .line 55
    const/4 v15, 0x0

    .line 56
    if-eqz v13, :cond_2

    .line 57
    .line 58
    if-ne v13, v14, :cond_1

    .line 59
    .line 60
    iget-boolean v0, v11, Landroidx/paging/PagingDataPresenter$presentNewList$1;->Z$0:Z

    .line 61
    .line 62
    iget v2, v11, Landroidx/paging/PagingDataPresenter$presentNewList$1;->I$1:I

    .line 63
    .line 64
    iget v3, v11, Landroidx/paging/PagingDataPresenter$presentNewList$1;->I$0:I

    .line 65
    .line 66
    iget-object v4, v11, Landroidx/paging/PagingDataPresenter$presentNewList$1;->L$6:Landroidx/paging/PageStore;

    .line 67
    .line 68
    iget-object v5, v11, Landroidx/paging/PagingDataPresenter$presentNewList$1;->L$5:Landroidx/paging/HintHandler;

    .line 69
    .line 70
    iget-object v6, v11, Landroidx/paging/PagingDataPresenter$presentNewList$1;->L$4:Landroidx/paging/PageStore;

    .line 71
    .line 72
    iget-object v12, v11, Landroidx/paging/PagingDataPresenter$presentNewList$1;->L$3:Landroidx/paging/HintHandler;

    .line 73
    .line 74
    iget-object v13, v11, Landroidx/paging/PagingDataPresenter$presentNewList$1;->L$2:Landroidx/paging/LoadStates;

    .line 75
    .line 76
    iget-object v14, v11, Landroidx/paging/PagingDataPresenter$presentNewList$1;->L$1:Landroidx/paging/LoadStates;

    .line 77
    .line 78
    iget-object v11, v11, Landroidx/paging/PagingDataPresenter$presentNewList$1;->L$0:Ljava/util/List;

    .line 79
    .line 80
    :try_start_0
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    move/from16 v16, v3

    .line 84
    .line 85
    move v3, v2

    .line 86
    move/from16 v2, v16

    .line 87
    .line 88
    move-object/from16 v16, v9

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :catch_0
    move-exception v0

    .line 92
    goto/16 :goto_5

    .line 93
    .line 94
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 95
    .line 96
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-object v15

    .line 100
    :cond_2
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    if-eqz v4, :cond_4

    .line 104
    .line 105
    if-eqz v5, :cond_3

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    const-string v0, "Cannot dispatch LoadStates in PagingDataPresenter without source LoadStates set."

    .line 109
    .line 110
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-object v15

    .line 114
    :cond_4
    :goto_1
    const/4 v7, 0x0

    .line 115
    iput-boolean v7, v1, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->lastAccessedIndexUnfulfilled:Z

    .line 116
    .line 117
    iget-object v7, v1, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->pageStore:Landroidx/paging/PageStore;

    .line 118
    .line 119
    iget-object v13, v1, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->hintReceiver:Landroidx/paging/HintHandler;

    .line 120
    .line 121
    new-instance v15, Landroidx/paging/PageStore;

    .line 122
    .line 123
    invoke-direct {v15, v2, v3, v0}, Landroidx/paging/PageStore;-><init>(IILjava/util/List;)V

    .line 124
    .line 125
    .line 126
    iget-object v14, v1, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->pageStore:Landroidx/paging/PageStore;

    .line 127
    .line 128
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    iput-object v15, v1, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->pageStore:Landroidx/paging/PageStore;

    .line 132
    .line 133
    iput-object v6, v1, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->hintReceiver:Landroidx/paging/HintHandler;

    .line 134
    .line 135
    move-object/from16 v16, v9

    .line 136
    .line 137
    :try_start_1
    new-instance v9, Landroidx/paging/PagingDataEvent$Refresh;

    .line 138
    .line 139
    invoke-direct {v9, v15, v14}, Landroidx/paging/PagingDataEvent$Refresh;-><init>(Landroidx/paging/PageStore;Landroidx/paging/PageStore;)V

    .line 140
    .line 141
    .line 142
    iput-object v0, v11, Landroidx/paging/PagingDataPresenter$presentNewList$1;->L$0:Ljava/util/List;

    .line 143
    .line 144
    iput-object v5, v11, Landroidx/paging/PagingDataPresenter$presentNewList$1;->L$1:Landroidx/paging/LoadStates;

    .line 145
    .line 146
    move-object/from16 v14, p6

    .line 147
    .line 148
    iput-object v14, v11, Landroidx/paging/PagingDataPresenter$presentNewList$1;->L$2:Landroidx/paging/LoadStates;

    .line 149
    .line 150
    iput-object v6, v11, Landroidx/paging/PagingDataPresenter$presentNewList$1;->L$3:Landroidx/paging/HintHandler;

    .line 151
    .line 152
    iput-object v7, v11, Landroidx/paging/PagingDataPresenter$presentNewList$1;->L$4:Landroidx/paging/PageStore;

    .line 153
    .line 154
    iput-object v13, v11, Landroidx/paging/PagingDataPresenter$presentNewList$1;->L$5:Landroidx/paging/HintHandler;

    .line 155
    .line 156
    iput-object v15, v11, Landroidx/paging/PagingDataPresenter$presentNewList$1;->L$6:Landroidx/paging/PageStore;

    .line 157
    .line 158
    iput v2, v11, Landroidx/paging/PagingDataPresenter$presentNewList$1;->I$0:I

    .line 159
    .line 160
    iput v3, v11, Landroidx/paging/PagingDataPresenter$presentNewList$1;->I$1:I

    .line 161
    .line 162
    iput-boolean v4, v11, Landroidx/paging/PagingDataPresenter$presentNewList$1;->Z$0:Z

    .line 163
    .line 164
    const/4 v0, 0x1

    .line 165
    iput v0, v11, Landroidx/paging/PagingDataPresenter$presentNewList$1;->label:I

    .line 166
    .line 167
    invoke-virtual {v1, v9, v11}, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->presentPagingDataEvent(Landroidx/paging/FlowExtKt;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v0
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    if-ne v0, v12, :cond_5

    .line 172
    .line 173
    return-object v12

    .line 174
    :cond_5
    move-object v0, v14

    .line 175
    move-object v14, v5

    .line 176
    move-object v5, v13

    .line 177
    move-object v13, v0

    .line 178
    move-object/from16 v11, p1

    .line 179
    .line 180
    move v0, v4

    .line 181
    move-object v12, v6

    .line 182
    move-object v6, v7

    .line 183
    move-object v4, v15

    .line 184
    :goto_2
    :try_start_2
    sget-object v7, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 185
    .line 186
    if-eqz v7, :cond_9

    .line 187
    .line 188
    const/4 v7, 0x3

    .line 189
    invoke-static {v8, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    if-eqz v7, :cond_9

    .line 194
    .line 195
    new-instance v7, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    check-cast v9, Landroidx/paging/TransformablePage;

    .line 205
    .line 206
    if-eqz v9, :cond_6

    .line 207
    .line 208
    iget-object v9, v9, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 209
    .line 210
    if-eqz v9, :cond_6

    .line 211
    .line 212
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v9

    .line 216
    goto :goto_3

    .line 217
    :cond_6
    const/4 v9, 0x0

    .line 218
    :goto_3
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v9, "\n                            |   last item: "

    .line 222
    .line 223
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v9

    .line 230
    check-cast v9, Landroidx/paging/TransformablePage;

    .line 231
    .line 232
    if-eqz v9, :cond_7

    .line 233
    .line 234
    iget-object v9, v9, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 235
    .line 236
    if-eqz v9, :cond_7

    .line 237
    .line 238
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v9

    .line 242
    goto :goto_4

    .line 243
    :cond_7
    const/4 v9, 0x0

    .line 244
    :goto_4
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string v9, "\n                            |   placeholdersBefore: "

    .line 248
    .line 249
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string v2, "\n                            |   placeholdersAfter: "

    .line 256
    .line 257
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    const-string v2, "\n                            |   hintReceiver: "

    .line 264
    .line 265
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string v2, "\n                            |   sourceLoadStates: "

    .line 272
    .line 273
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-string v2, "\n                        "

    .line 280
    .line 281
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    if-eqz v13, :cond_8

    .line 289
    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string/jumbo v2, "|   mediatorLoadStates: "

    .line 299
    .line 300
    .line 301
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    const/16 v2, 0xa

    .line 308
    .line 309
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    :cond_8
    move-object/from16 v3, v16

    .line 317
    .line 318
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    invoke-static {v2}, Lkotlin/text/StringsKt__IndentKt;->trimMargin$default(Ljava/lang/String;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    const/4 v3, 0x0

    .line 327
    invoke-static {v8, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    .line 329
    .line 330
    :cond_9
    if-eqz v0, :cond_a

    .line 331
    .line 332
    iget-object v0, v1, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->combinedLoadStatesCollection:Lcom/caverock/androidsvg/SVG;

    .line 333
    .line 334
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0, v14, v13}, Lcom/caverock/androidsvg/SVG;->set(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    .line 338
    .line 339
    .line 340
    :cond_a
    invoke-virtual {v4}, Landroidx/paging/PageStore;->getSize()I

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    if-nez v0, :cond_b

    .line 345
    .line 346
    iget-object v0, v1, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->hintReceiver:Landroidx/paging/HintHandler;

    .line 347
    .line 348
    if-eqz v0, :cond_b

    .line 349
    .line 350
    iget v2, v4, Landroidx/paging/PageStore;->dataCount:I

    .line 351
    .line 352
    new-instance v3, Landroidx/paging/ViewportHint$Initial;

    .line 353
    .line 354
    div-int/lit8 v2, v2, 0x2

    .line 355
    .line 356
    invoke-virtual {v4}, Landroidx/paging/PageStore;->getOriginalPageOffsetFirst()I

    .line 357
    .line 358
    .line 359
    move-result v7

    .line 360
    invoke-virtual {v4}, Landroidx/paging/PageStore;->getOriginalPageOffsetLast()I

    .line 361
    .line 362
    .line 363
    move-result v4

    .line 364
    invoke-direct {v3, v2, v2, v7, v4}, Landroidx/paging/ViewportHint;-><init>(IIII)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0, v3}, Landroidx/paging/HintHandler;->processHint(Landroidx/paging/ViewportHint;)V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 368
    .line 369
    .line 370
    :cond_b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 371
    .line 372
    return-object v0

    .line 373
    :catch_1
    move-exception v0

    .line 374
    move-object v6, v7

    .line 375
    move-object v5, v13

    .line 376
    :goto_5
    iput-object v6, v1, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->pageStore:Landroidx/paging/PageStore;

    .line 377
    .line 378
    iput-object v5, v1, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->hintReceiver:Landroidx/paging/HintHandler;

    .line 379
    .line 380
    throw v0
.end method

.method public final presentPagingDataEvent(Landroidx/paging/FlowExtKt;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget v3, v0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->$r8$classId:I

    .line 8
    .line 9
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 10
    .line 11
    iget-object v5, v0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->this$0:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v3, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v5, Landroidx/paging/compose/LazyPagingItems;

    .line 17
    .line 18
    iget-object v0, v5, Landroidx/paging/compose/LazyPagingItems;->pagingDataPresenter:Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->snapshot()Landroidx/paging/ItemSnapshotList;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, v5, Landroidx/paging/compose/LazyPagingItems;->itemSnapshotList$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-object v4

    .line 30
    :pswitch_0
    check-cast v5, Landroidx/paging/AsyncPagingDataDiffer;

    .line 31
    .line 32
    iget-object v3, v5, Landroidx/paging/AsyncPagingDataDiffer;->updateCallback:Lcoil3/memory/MemoryCacheService;

    .line 33
    .line 34
    instance-of v6, v2, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1;

    .line 35
    .line 36
    if-eqz v6, :cond_0

    .line 37
    .line 38
    move-object v6, v2

    .line 39
    check-cast v6, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1;

    .line 40
    .line 41
    iget v7, v6, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1;->label:I

    .line 42
    .line 43
    const/high16 v8, -0x80000000

    .line 44
    .line 45
    and-int v9, v7, v8

    .line 46
    .line 47
    if-eqz v9, :cond_0

    .line 48
    .line 49
    sub-int/2addr v7, v8

    .line 50
    iput v7, v6, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1;->label:I

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    new-instance v6, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1;

    .line 54
    .line 55
    invoke-direct {v6, v0, v2}, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1;-><init>(Landroidx/paging/AsyncPagingDataDiffer$presenter$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    iget-object v2, v6, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1;->result:Ljava/lang/Object;

    .line 59
    .line 60
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 61
    .line 62
    iget v8, v6, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1;->label:I

    .line 63
    .line 64
    const/4 v9, 0x0

    .line 65
    const/4 v10, 0x1

    .line 66
    const/4 v11, 0x0

    .line 67
    if-eqz v8, :cond_2

    .line 68
    .line 69
    if-ne v8, v10, :cond_1

    .line 70
    .line 71
    iget-object v1, v6, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1;->L$2:Landroidx/paging/PagingDataEvent$Refresh;

    .line 72
    .line 73
    iget-object v5, v6, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1;->L$1:Landroidx/paging/AsyncPagingDataDiffer;

    .line 74
    .line 75
    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    goto/16 :goto_b

    .line 81
    .line 82
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 83
    .line 84
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :goto_1
    move-object v4, v9

    .line 88
    goto/16 :goto_e

    .line 89
    .line 90
    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    instance-of v2, v1, Landroidx/paging/PagingDataEvent$Refresh;

    .line 94
    .line 95
    if-eqz v2, :cond_1e

    .line 96
    .line 97
    check-cast v1, Landroidx/paging/PagingDataEvent$Refresh;

    .line 98
    .line 99
    iget-object v2, v1, Landroidx/paging/PagingDataEvent$Refresh;->newList:Landroidx/paging/PageStore;

    .line 100
    .line 101
    iget-object v8, v1, Landroidx/paging/PagingDataEvent$Refresh;->previousList:Landroidx/paging/PageStore;

    .line 102
    .line 103
    invoke-virtual {v8}, Landroidx/paging/PageStore;->getSize()I

    .line 104
    .line 105
    .line 106
    move-result v12

    .line 107
    if-nez v12, :cond_3

    .line 108
    .line 109
    invoke-virtual {v2}, Landroidx/paging/PageStore;->getSize()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-lez v0, :cond_2e

    .line 114
    .line 115
    invoke-virtual {v2}, Landroidx/paging/PageStore;->getSize()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    invoke-virtual {v3, v11, v0}, Lcoil3/memory/MemoryCacheService;->onInserted(II)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_e

    .line 123
    .line 124
    :cond_3
    invoke-virtual {v2}, Landroidx/paging/PageStore;->getSize()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-nez v2, :cond_4

    .line 129
    .line 130
    invoke-virtual {v8}, Landroidx/paging/PageStore;->getSize()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-lez v0, :cond_2e

    .line 135
    .line 136
    invoke-virtual {v8}, Landroidx/paging/PageStore;->getSize()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    invoke-virtual {v3, v11, v0}, Lcoil3/memory/MemoryCacheService;->onRemoved(II)V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_e

    .line 144
    .line 145
    :cond_4
    iget-object v2, v5, Landroidx/paging/AsyncPagingDataDiffer;->previousPresenter:Ljava/util/concurrent/atomic/AtomicReference;

    .line 146
    .line 147
    invoke-virtual {v2, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    :try_start_1
    iget-object v2, v5, Landroidx/paging/AsyncPagingDataDiffer;->workerDispatcher:Lkotlin/coroutines/CoroutineContext;

    .line 151
    .line 152
    new-instance v3, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 153
    .line 154
    const/16 v8, 0x8

    .line 155
    .line 156
    invoke-direct {v3, v1, v5, v9, v8}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 157
    .line 158
    .line 159
    iput-object v5, v6, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1;->L$1:Landroidx/paging/AsyncPagingDataDiffer;

    .line 160
    .line 161
    iput-object v1, v6, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1;->L$2:Landroidx/paging/PagingDataEvent$Refresh;

    .line 162
    .line 163
    iput v10, v6, Landroidx/paging/AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1;->label:I

    .line 164
    .line 165
    invoke-static {v2, v3, v6}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    if-ne v2, v7, :cond_5

    .line 170
    .line 171
    move-object v4, v7

    .line 172
    goto/16 :goto_e

    .line 173
    .line 174
    :cond_5
    :goto_2
    check-cast v2, Landroidx/paging/PlaceholderPaddedDiffResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    .line 176
    iget-object v3, v5, Landroidx/paging/AsyncPagingDataDiffer;->previousPresenter:Ljava/util/concurrent/atomic/AtomicReference;

    .line 177
    .line 178
    invoke-virtual {v3, v9}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    iget-object v3, v1, Landroidx/paging/PagingDataEvent$Refresh;->previousList:Landroidx/paging/PageStore;

    .line 182
    .line 183
    iget-object v6, v1, Landroidx/paging/PagingDataEvent$Refresh;->newList:Landroidx/paging/PageStore;

    .line 184
    .line 185
    iget-object v7, v5, Landroidx/paging/AsyncPagingDataDiffer;->updateCallback:Lcoil3/memory/MemoryCacheService;

    .line 186
    .line 187
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    iget-object v8, v2, Landroidx/paging/PlaceholderPaddedDiffResult;->diff:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 194
    .line 195
    iget-boolean v2, v2, Landroidx/paging/PlaceholderPaddedDiffResult;->hasOverlap:Z

    .line 196
    .line 197
    if-eqz v2, :cond_d

    .line 198
    .line 199
    new-instance v9, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;

    .line 200
    .line 201
    invoke-direct {v9, v3, v6, v7}, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;-><init>(Landroidx/paging/PageStore;Landroidx/paging/PageStore;Lcoil3/memory/MemoryCacheService;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 205
    .line 206
    .line 207
    iget v12, v3, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 208
    .line 209
    iget v13, v9, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersBefore:I

    .line 210
    .line 211
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    .line 212
    .line 213
    .line 214
    move-result v12

    .line 215
    iget v13, v6, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 216
    .line 217
    iget v14, v9, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersBefore:I

    .line 218
    .line 219
    sub-int/2addr v13, v14

    .line 220
    if-lez v13, :cond_7

    .line 221
    .line 222
    if-lez v12, :cond_6

    .line 223
    .line 224
    sget-object v14, Landroidx/paging/DiffingChangePayload;->PLACEHOLDER_POSITION_CHANGE:Landroidx/paging/DiffingChangePayload;

    .line 225
    .line 226
    invoke-virtual {v7, v11, v12, v14}, Lcoil3/memory/MemoryCacheService;->onChanged(IILjava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    :cond_6
    invoke-virtual {v7, v11, v13}, Lcoil3/memory/MemoryCacheService;->onInserted(II)V

    .line 230
    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_7
    if-gez v13, :cond_8

    .line 234
    .line 235
    neg-int v14, v13

    .line 236
    invoke-virtual {v7, v11, v14}, Lcoil3/memory/MemoryCacheService;->onRemoved(II)V

    .line 237
    .line 238
    .line 239
    add-int/2addr v12, v13

    .line 240
    if-lez v12, :cond_8

    .line 241
    .line 242
    sget-object v13, Landroidx/paging/DiffingChangePayload;->PLACEHOLDER_POSITION_CHANGE:Landroidx/paging/DiffingChangePayload;

    .line 243
    .line 244
    invoke-virtual {v7, v11, v12, v13}, Lcoil3/memory/MemoryCacheService;->onChanged(IILjava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    :cond_8
    :goto_3
    iget v12, v6, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 248
    .line 249
    iput v12, v9, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersBefore:I

    .line 250
    .line 251
    iget v12, v3, Landroidx/paging/PageStore;->placeholdersAfter:I

    .line 252
    .line 253
    iget v13, v9, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersAfter:I

    .line 254
    .line 255
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    .line 256
    .line 257
    .line 258
    move-result v12

    .line 259
    iget v13, v6, Landroidx/paging/PageStore;->placeholdersAfter:I

    .line 260
    .line 261
    iget v14, v9, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersAfter:I

    .line 262
    .line 263
    sub-int/2addr v13, v14

    .line 264
    iget v15, v9, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersBefore:I

    .line 265
    .line 266
    iget v10, v9, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->storageCount:I

    .line 267
    .line 268
    add-int/2addr v15, v10

    .line 269
    add-int/2addr v15, v14

    .line 270
    sub-int v10, v15, v12

    .line 271
    .line 272
    invoke-virtual {v3}, Landroidx/paging/PageStore;->getSize()I

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    sub-int/2addr v3, v12

    .line 277
    if-eq v10, v3, :cond_9

    .line 278
    .line 279
    const/4 v3, 0x1

    .line 280
    goto :goto_4

    .line 281
    :cond_9
    move v3, v11

    .line 282
    :goto_4
    if-lez v13, :cond_a

    .line 283
    .line 284
    invoke-virtual {v7, v15, v13}, Lcoil3/memory/MemoryCacheService;->onInserted(II)V

    .line 285
    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_a
    if-gez v13, :cond_b

    .line 289
    .line 290
    add-int/2addr v15, v13

    .line 291
    neg-int v14, v13

    .line 292
    invoke-virtual {v7, v15, v14}, Lcoil3/memory/MemoryCacheService;->onRemoved(II)V

    .line 293
    .line 294
    .line 295
    add-int/2addr v12, v13

    .line 296
    :cond_b
    :goto_5
    if-lez v12, :cond_c

    .line 297
    .line 298
    if-eqz v3, :cond_c

    .line 299
    .line 300
    sget-object v3, Landroidx/paging/DiffingChangePayload;->PLACEHOLDER_POSITION_CHANGE:Landroidx/paging/DiffingChangePayload;

    .line 301
    .line 302
    invoke-virtual {v7, v10, v12, v3}, Lcoil3/memory/MemoryCacheService;->onChanged(IILjava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    :cond_c
    iget v3, v6, Landroidx/paging/PageStore;->placeholdersAfter:I

    .line 306
    .line 307
    iput v3, v9, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersAfter:I

    .line 308
    .line 309
    goto/16 :goto_6

    .line 310
    .line 311
    :cond_d
    iget v9, v3, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 312
    .line 313
    iget v10, v6, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 314
    .line 315
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    .line 316
    .line 317
    .line 318
    move-result v9

    .line 319
    iget v10, v3, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 320
    .line 321
    iget v12, v3, Landroidx/paging/PageStore;->dataCount:I

    .line 322
    .line 323
    add-int/2addr v10, v12

    .line 324
    iget v12, v6, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 325
    .line 326
    iget v13, v6, Landroidx/paging/PageStore;->dataCount:I

    .line 327
    .line 328
    add-int/2addr v12, v13

    .line 329
    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    .line 330
    .line 331
    .line 332
    move-result v10

    .line 333
    sub-int v12, v10, v9

    .line 334
    .line 335
    if-lez v12, :cond_e

    .line 336
    .line 337
    invoke-virtual {v7, v9, v12}, Lcoil3/memory/MemoryCacheService;->onRemoved(II)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v7, v9, v12}, Lcoil3/memory/MemoryCacheService;->onInserted(II)V

    .line 341
    .line 342
    .line 343
    :cond_e
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 344
    .line 345
    .line 346
    move-result v12

    .line 347
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    .line 348
    .line 349
    .line 350
    move-result v9

    .line 351
    iget v10, v3, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 352
    .line 353
    invoke-virtual {v6}, Landroidx/paging/PageStore;->getSize()I

    .line 354
    .line 355
    .line 356
    move-result v13

    .line 357
    if-le v10, v13, :cond_f

    .line 358
    .line 359
    move v10, v13

    .line 360
    :cond_f
    iget v13, v3, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 361
    .line 362
    iget v14, v3, Landroidx/paging/PageStore;->dataCount:I

    .line 363
    .line 364
    add-int/2addr v13, v14

    .line 365
    invoke-virtual {v6}, Landroidx/paging/PageStore;->getSize()I

    .line 366
    .line 367
    .line 368
    move-result v14

    .line 369
    if-le v13, v14, :cond_10

    .line 370
    .line 371
    move v13, v14

    .line 372
    :cond_10
    sget-object v14, Landroidx/paging/DiffingChangePayload;->ITEM_TO_PLACEHOLDER:Landroidx/paging/DiffingChangePayload;

    .line 373
    .line 374
    sub-int v15, v12, v10

    .line 375
    .line 376
    if-lez v15, :cond_11

    .line 377
    .line 378
    invoke-virtual {v7, v10, v15, v14}, Lcoil3/memory/MemoryCacheService;->onChanged(IILjava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    :cond_11
    sub-int/2addr v13, v9

    .line 382
    if-lez v13, :cond_12

    .line 383
    .line 384
    invoke-virtual {v7, v9, v13, v14}, Lcoil3/memory/MemoryCacheService;->onChanged(IILjava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    :cond_12
    iget v10, v6, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 388
    .line 389
    invoke-virtual {v3}, Landroidx/paging/PageStore;->getSize()I

    .line 390
    .line 391
    .line 392
    move-result v13

    .line 393
    if-le v10, v13, :cond_13

    .line 394
    .line 395
    move v10, v13

    .line 396
    :cond_13
    iget v13, v6, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 397
    .line 398
    iget v14, v6, Landroidx/paging/PageStore;->dataCount:I

    .line 399
    .line 400
    add-int/2addr v13, v14

    .line 401
    invoke-virtual {v3}, Landroidx/paging/PageStore;->getSize()I

    .line 402
    .line 403
    .line 404
    move-result v14

    .line 405
    if-le v13, v14, :cond_14

    .line 406
    .line 407
    move v13, v14

    .line 408
    :cond_14
    sget-object v14, Landroidx/paging/DiffingChangePayload;->PLACEHOLDER_TO_ITEM:Landroidx/paging/DiffingChangePayload;

    .line 409
    .line 410
    sub-int/2addr v12, v10

    .line 411
    if-lez v12, :cond_15

    .line 412
    .line 413
    invoke-virtual {v7, v10, v12, v14}, Lcoil3/memory/MemoryCacheService;->onChanged(IILjava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    :cond_15
    sub-int/2addr v13, v9

    .line 417
    if-lez v13, :cond_16

    .line 418
    .line 419
    invoke-virtual {v7, v9, v13, v14}, Lcoil3/memory/MemoryCacheService;->onChanged(IILjava/lang/Object;)V

    .line 420
    .line 421
    .line 422
    :cond_16
    invoke-virtual {v6}, Landroidx/paging/PageStore;->getSize()I

    .line 423
    .line 424
    .line 425
    move-result v9

    .line 426
    invoke-virtual {v3}, Landroidx/paging/PageStore;->getSize()I

    .line 427
    .line 428
    .line 429
    move-result v10

    .line 430
    sub-int/2addr v9, v10

    .line 431
    if-lez v9, :cond_17

    .line 432
    .line 433
    invoke-virtual {v3}, Landroidx/paging/PageStore;->getSize()I

    .line 434
    .line 435
    .line 436
    move-result v3

    .line 437
    invoke-virtual {v7, v3, v9}, Lcoil3/memory/MemoryCacheService;->onInserted(II)V

    .line 438
    .line 439
    .line 440
    goto :goto_6

    .line 441
    :cond_17
    if-gez v9, :cond_18

    .line 442
    .line 443
    invoke-virtual {v3}, Landroidx/paging/PageStore;->getSize()I

    .line 444
    .line 445
    .line 446
    move-result v3

    .line 447
    add-int/2addr v3, v9

    .line 448
    neg-int v9, v9

    .line 449
    invoke-virtual {v7, v3, v9}, Lcoil3/memory/MemoryCacheService;->onRemoved(II)V

    .line 450
    .line 451
    .line 452
    :cond_18
    :goto_6
    iget-object v1, v1, Landroidx/paging/PagingDataEvent$Refresh;->previousList:Landroidx/paging/PageStore;

    .line 453
    .line 454
    iget v3, v5, Landroidx/paging/AsyncPagingDataDiffer;->lastAccessedIndex:I

    .line 455
    .line 456
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 457
    .line 458
    .line 459
    if-nez v2, :cond_19

    .line 460
    .line 461
    invoke-virtual {v6}, Landroidx/paging/PageStore;->getSize()I

    .line 462
    .line 463
    .line 464
    move-result v1

    .line 465
    invoke-static {v11, v1}, Lkotlin/text/RegexKt;->until(II)Lkotlin/ranges/IntRange;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    invoke-static {v3, v1}, Lkotlin/text/RegexKt;->coerceIn(ILkotlin/ranges/IntRange;)I

    .line 470
    .line 471
    .line 472
    move-result v1

    .line 473
    goto :goto_a

    .line 474
    :cond_19
    iget v2, v1, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 475
    .line 476
    sub-int v2, v3, v2

    .line 477
    .line 478
    iget v7, v1, Landroidx/paging/PageStore;->dataCount:I

    .line 479
    .line 480
    if-ltz v2, :cond_1d

    .line 481
    .line 482
    if-ge v2, v7, :cond_1d

    .line 483
    .line 484
    move v7, v11

    .line 485
    :goto_7
    const/16 v9, 0x1e

    .line 486
    .line 487
    if-ge v7, v9, :cond_1d

    .line 488
    .line 489
    div-int/lit8 v9, v7, 0x2

    .line 490
    .line 491
    rem-int/lit8 v10, v7, 0x2

    .line 492
    .line 493
    const/4 v12, -0x1

    .line 494
    const/4 v13, 0x1

    .line 495
    if-ne v10, v13, :cond_1a

    .line 496
    .line 497
    move v10, v12

    .line 498
    goto :goto_8

    .line 499
    :cond_1a
    move v10, v13

    .line 500
    :goto_8
    mul-int/2addr v9, v10

    .line 501
    add-int/2addr v9, v2

    .line 502
    if-ltz v9, :cond_1c

    .line 503
    .line 504
    iget v10, v1, Landroidx/paging/PageStore;->dataCount:I

    .line 505
    .line 506
    if-lt v9, v10, :cond_1b

    .line 507
    .line 508
    goto :goto_9

    .line 509
    :cond_1b
    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->convertOldPositionToNew(I)I

    .line 510
    .line 511
    .line 512
    move-result v9

    .line 513
    if-eq v9, v12, :cond_1c

    .line 514
    .line 515
    iget v1, v6, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 516
    .line 517
    add-int/2addr v1, v9

    .line 518
    goto :goto_a

    .line 519
    :cond_1c
    :goto_9
    add-int/lit8 v7, v7, 0x1

    .line 520
    .line 521
    goto :goto_7

    .line 522
    :cond_1d
    invoke-virtual {v6}, Landroidx/paging/PageStore;->getSize()I

    .line 523
    .line 524
    .line 525
    move-result v1

    .line 526
    invoke-static {v11, v1}, Lkotlin/text/RegexKt;->until(II)Lkotlin/ranges/IntRange;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    invoke-static {v3, v1}, Lkotlin/text/RegexKt;->coerceIn(ILkotlin/ranges/IntRange;)I

    .line 531
    .line 532
    .line 533
    move-result v1

    .line 534
    :goto_a
    iput v1, v5, Landroidx/paging/AsyncPagingDataDiffer;->lastAccessedIndex:I

    .line 535
    .line 536
    invoke-virtual {v0, v1}, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->get(I)Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    goto/16 :goto_e

    .line 540
    .line 541
    :goto_b
    iget-object v1, v5, Landroidx/paging/AsyncPagingDataDiffer;->previousPresenter:Ljava/util/concurrent/atomic/AtomicReference;

    .line 542
    .line 543
    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 544
    .line 545
    .line 546
    throw v0

    .line 547
    :cond_1e
    instance-of v0, v1, Landroidx/paging/PagingDataEvent$Prepend;

    .line 548
    .line 549
    if-eqz v0, :cond_22

    .line 550
    .line 551
    move-object v0, v1

    .line 552
    check-cast v0, Landroidx/paging/PagingDataEvent$Prepend;

    .line 553
    .line 554
    iget v1, v0, Landroidx/paging/PagingDataEvent$Prepend;->oldPlaceholdersBefore:I

    .line 555
    .line 556
    iget-object v2, v0, Landroidx/paging/PagingDataEvent$Prepend;->inserted:Ljava/util/ArrayList;

    .line 557
    .line 558
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 559
    .line 560
    .line 561
    move-result v2

    .line 562
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 563
    .line 564
    .line 565
    move-result v5

    .line 566
    sub-int v6, v1, v5

    .line 567
    .line 568
    sub-int/2addr v2, v5

    .line 569
    if-lez v5, :cond_1f

    .line 570
    .line 571
    invoke-virtual {v3, v6, v5, v9}, Lcoil3/memory/MemoryCacheService;->onChanged(IILjava/lang/Object;)V

    .line 572
    .line 573
    .line 574
    :cond_1f
    if-lez v2, :cond_20

    .line 575
    .line 576
    invoke-virtual {v3, v11, v2}, Lcoil3/memory/MemoryCacheService;->onInserted(II)V

    .line 577
    .line 578
    .line 579
    :cond_20
    iget v0, v0, Landroidx/paging/PagingDataEvent$Prepend;->newPlaceholdersBefore:I

    .line 580
    .line 581
    sub-int/2addr v0, v1

    .line 582
    add-int/2addr v0, v5

    .line 583
    if-lez v0, :cond_21

    .line 584
    .line 585
    invoke-virtual {v3, v11, v0}, Lcoil3/memory/MemoryCacheService;->onInserted(II)V

    .line 586
    .line 587
    .line 588
    goto/16 :goto_e

    .line 589
    .line 590
    :cond_21
    if-gez v0, :cond_2e

    .line 591
    .line 592
    neg-int v0, v0

    .line 593
    invoke-virtual {v3, v11, v0}, Lcoil3/memory/MemoryCacheService;->onRemoved(II)V

    .line 594
    .line 595
    .line 596
    goto/16 :goto_e

    .line 597
    .line 598
    :cond_22
    instance-of v0, v1, Landroidx/paging/PagingDataEvent$Append;

    .line 599
    .line 600
    if-eqz v0, :cond_26

    .line 601
    .line 602
    move-object v0, v1

    .line 603
    check-cast v0, Landroidx/paging/PagingDataEvent$Append;

    .line 604
    .line 605
    iget v1, v0, Landroidx/paging/PagingDataEvent$Append;->startIndex:I

    .line 606
    .line 607
    iget v2, v0, Landroidx/paging/PagingDataEvent$Append;->oldPlaceholdersAfter:I

    .line 608
    .line 609
    iget-object v5, v0, Landroidx/paging/PagingDataEvent$Append;->inserted:Ljava/util/ArrayList;

    .line 610
    .line 611
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 612
    .line 613
    .line 614
    move-result v5

    .line 615
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    .line 616
    .line 617
    .line 618
    move-result v6

    .line 619
    sub-int v7, v5, v6

    .line 620
    .line 621
    add-int v8, v1, v6

    .line 622
    .line 623
    if-lez v6, :cond_23

    .line 624
    .line 625
    invoke-virtual {v3, v1, v6, v9}, Lcoil3/memory/MemoryCacheService;->onChanged(IILjava/lang/Object;)V

    .line 626
    .line 627
    .line 628
    :cond_23
    if-lez v7, :cond_24

    .line 629
    .line 630
    invoke-virtual {v3, v8, v7}, Lcoil3/memory/MemoryCacheService;->onInserted(II)V

    .line 631
    .line 632
    .line 633
    :cond_24
    iget v0, v0, Landroidx/paging/PagingDataEvent$Append;->newPlaceholdersAfter:I

    .line 634
    .line 635
    sub-int v2, v0, v2

    .line 636
    .line 637
    add-int/2addr v2, v6

    .line 638
    add-int/2addr v1, v5

    .line 639
    add-int/2addr v1, v0

    .line 640
    if-lez v2, :cond_25

    .line 641
    .line 642
    sub-int/2addr v1, v2

    .line 643
    invoke-virtual {v3, v1, v2}, Lcoil3/memory/MemoryCacheService;->onInserted(II)V

    .line 644
    .line 645
    .line 646
    goto :goto_e

    .line 647
    :cond_25
    if-gez v2, :cond_2e

    .line 648
    .line 649
    neg-int v0, v2

    .line 650
    invoke-virtual {v3, v1, v0}, Lcoil3/memory/MemoryCacheService;->onRemoved(II)V

    .line 651
    .line 652
    .line 653
    goto :goto_e

    .line 654
    :cond_26
    instance-of v0, v1, Landroidx/paging/PagingDataEvent$DropPrepend;

    .line 655
    .line 656
    if-eqz v0, :cond_29

    .line 657
    .line 658
    move-object v0, v1

    .line 659
    check-cast v0, Landroidx/paging/PagingDataEvent$DropPrepend;

    .line 660
    .line 661
    iget v1, v0, Landroidx/paging/PagingDataEvent$DropPrepend;->oldPlaceholdersBefore:I

    .line 662
    .line 663
    iget v2, v0, Landroidx/paging/PagingDataEvent$DropPrepend;->newPlaceholdersBefore:I

    .line 664
    .line 665
    iget v0, v0, Landroidx/paging/PagingDataEvent$DropPrepend;->dropCount:I

    .line 666
    .line 667
    sub-int v0, v2, v0

    .line 668
    .line 669
    sub-int/2addr v0, v1

    .line 670
    if-lez v0, :cond_27

    .line 671
    .line 672
    invoke-virtual {v3, v11, v0}, Lcoil3/memory/MemoryCacheService;->onInserted(II)V

    .line 673
    .line 674
    .line 675
    goto :goto_c

    .line 676
    :cond_27
    if-gez v0, :cond_28

    .line 677
    .line 678
    neg-int v5, v0

    .line 679
    invoke-virtual {v3, v11, v5}, Lcoil3/memory/MemoryCacheService;->onRemoved(II)V

    .line 680
    .line 681
    .line 682
    :cond_28
    :goto_c
    add-int/2addr v1, v0

    .line 683
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    .line 684
    .line 685
    .line 686
    move-result v0

    .line 687
    sub-int/2addr v2, v0

    .line 688
    if-lez v2, :cond_2e

    .line 689
    .line 690
    invoke-virtual {v3, v0, v2, v9}, Lcoil3/memory/MemoryCacheService;->onChanged(IILjava/lang/Object;)V

    .line 691
    .line 692
    .line 693
    goto :goto_e

    .line 694
    :cond_29
    instance-of v0, v1, Landroidx/paging/PagingDataEvent$DropAppend;

    .line 695
    .line 696
    if-eqz v0, :cond_2d

    .line 697
    .line 698
    move-object v0, v1

    .line 699
    check-cast v0, Landroidx/paging/PagingDataEvent$DropAppend;

    .line 700
    .line 701
    iget v1, v0, Landroidx/paging/PagingDataEvent$DropAppend;->startIndex:I

    .line 702
    .line 703
    iget v2, v0, Landroidx/paging/PagingDataEvent$DropAppend;->newPlaceholdersAfter:I

    .line 704
    .line 705
    iget v5, v0, Landroidx/paging/PagingDataEvent$DropAppend;->oldPlaceholdersAfter:I

    .line 706
    .line 707
    iget v0, v0, Landroidx/paging/PagingDataEvent$DropAppend;->dropCount:I

    .line 708
    .line 709
    sub-int v0, v2, v0

    .line 710
    .line 711
    sub-int/2addr v0, v5

    .line 712
    add-int v6, v1, v2

    .line 713
    .line 714
    if-lez v0, :cond_2a

    .line 715
    .line 716
    sub-int/2addr v6, v0

    .line 717
    invoke-virtual {v3, v6, v0}, Lcoil3/memory/MemoryCacheService;->onInserted(II)V

    .line 718
    .line 719
    .line 720
    goto :goto_d

    .line 721
    :cond_2a
    if-gez v0, :cond_2b

    .line 722
    .line 723
    neg-int v7, v0

    .line 724
    invoke-virtual {v3, v6, v7}, Lcoil3/memory/MemoryCacheService;->onRemoved(II)V

    .line 725
    .line 726
    .line 727
    :cond_2b
    :goto_d
    if-gez v0, :cond_2c

    .line 728
    .line 729
    neg-int v0, v0

    .line 730
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    .line 731
    .line 732
    .line 733
    move-result v11

    .line 734
    :cond_2c
    sub-int/2addr v2, v5

    .line 735
    add-int/2addr v2, v11

    .line 736
    if-lez v2, :cond_2e

    .line 737
    .line 738
    invoke-virtual {v3, v1, v2, v9}, Lcoil3/memory/MemoryCacheService;->onChanged(IILjava/lang/Object;)V

    .line 739
    .line 740
    .line 741
    goto :goto_e

    .line 742
    :cond_2d
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 743
    .line 744
    .line 745
    goto/16 :goto_1

    .line 746
    .line 747
    :cond_2e
    :goto_e
    return-object v4

    .line 748
    nop

    .line 749
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final refresh()V
    .locals 3

    .line 1
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Paging"

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v1, "Refresh signal received"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->uiReceiver:Landroidx/paging/UiReceiver;

    .line 21
    .line 22
    invoke-interface {p0}, Landroidx/paging/UiReceiver;->refresh()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final snapshot()Landroidx/paging/ItemSnapshotList;
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->pageStore:Landroidx/paging/PageStore;

    .line 2
    .line 3
    iget v0, p0, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 4
    .line 5
    iget v1, p0, Landroidx/paging/PageStore;->placeholdersAfter:I

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/paging/PageStore;->pages:Ljava/util/ArrayList;

    .line 8
    .line 9
    new-instance v2, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroidx/paging/TransformablePage;

    .line 29
    .line 30
    iget-object v3, v3, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 31
    .line 32
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance p0, Landroidx/paging/ItemSnapshotList;

    .line 37
    .line 38
    invoke-direct {p0, v2, v0, v1}, Landroidx/paging/ItemSnapshotList;-><init>(Ljava/util/ArrayList;II)V

    .line 39
    .line 40
    .line 41
    return-object p0
.end method
