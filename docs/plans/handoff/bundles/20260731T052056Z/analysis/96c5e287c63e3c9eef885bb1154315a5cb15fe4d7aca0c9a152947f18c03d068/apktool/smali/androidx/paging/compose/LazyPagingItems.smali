.class public final Landroidx/paging/compose/LazyPagingItems;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final flow:Lkotlinx/coroutines/flow/Flow;

.field public final itemSnapshotList$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final loadState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final pagingDataPresenter:Landroidx/paging/AsyncPagingDataDiffer$presenter$1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/Flow;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/paging/compose/LazyPagingItems;->flow:Lkotlinx/coroutines/flow/Flow;

    .line 5
    .line 6
    sget-object v0, Landroidx/paging/compose/UiDispatcher_androidKt;->uiDispatcher:Lkotlin/coroutines/CoroutineContext;

    .line 7
    .line 8
    instance-of v1, p1, Lkotlinx/coroutines/flow/SharedFlow;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast p1, Lkotlinx/coroutines/flow/SharedFlow;

    .line 13
    .line 14
    invoke-interface {p1}, Lkotlinx/coroutines/flow/SharedFlow;->getReplayCache()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroidx/paging/PagingData;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    new-instance v1, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 27
    .line 28
    invoke-direct {v1, p0, v0, p1}, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;-><init>(Landroidx/paging/compose/LazyPagingItems;Lkotlin/coroutines/CoroutineContext;Landroidx/paging/PagingData;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Landroidx/paging/compose/LazyPagingItems;->pagingDataPresenter:Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->snapshot()Landroidx/paging/ItemSnapshotList;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Landroidx/paging/compose/LazyPagingItems;->itemSnapshotList$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 42
    .line 43
    iget-object p1, v1, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->loadStateFlow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 44
    .line 45
    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 46
    .line 47
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Landroidx/paging/CombinedLoadStates;

    .line 52
    .line 53
    if-nez p1, :cond_1

    .line 54
    .line 55
    new-instance v0, Landroidx/paging/CombinedLoadStates;

    .line 56
    .line 57
    sget-object v4, Landroidx/paging/compose/LazyPagingItemsKt;->InitialLoadStates:Landroidx/paging/LoadStates;

    .line 58
    .line 59
    iget-object v1, v4, Landroidx/paging/LoadStates;->refresh:Landroidx/paging/LoadState;

    .line 60
    .line 61
    iget-object v2, v4, Landroidx/paging/LoadStates;->prepend:Landroidx/paging/LoadState;

    .line 62
    .line 63
    iget-object v3, v4, Landroidx/paging/LoadStates;->append:Landroidx/paging/LoadState;

    .line 64
    .line 65
    const/4 v5, 0x0

    .line 66
    invoke-direct/range {v0 .. v5}, Landroidx/paging/CombinedLoadStates;-><init>(Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    .line 67
    .line 68
    .line 69
    move-object p1, v0

    .line 70
    :cond_1
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Landroidx/paging/compose/LazyPagingItems;->loadState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 75
    .line 76
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/paging/compose/LazyPagingItems;->itemSnapshotList$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/paging/ItemSnapshotList;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/paging/ItemSnapshotList;->getSize()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method
