.class public final Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _deleteSelectedPagesFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final _recommendedListFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _saveReadingListFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final _updateListByIdFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final _updateListFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final deleteSelectedPagesFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final recommendedListFlow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final saveReadingListFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final updateListByIdFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final updateListFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final yirListFlow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x7

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iput-object v3, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;->_updateListByIdFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 12
    .line 13
    new-instance v4, Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 14
    .line 15
    invoke-direct {v4, v3}, Lkotlinx/coroutines/flow/ReadonlySharedFlow;-><init>(Lkotlinx/coroutines/flow/MutableSharedFlow;)V

    .line 16
    .line 17
    .line 18
    iput-object v4, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;->updateListByIdFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 19
    .line 20
    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iput-object v3, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;->_updateListFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 25
    .line 26
    new-instance v4, Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 27
    .line 28
    invoke-direct {v4, v3}, Lkotlinx/coroutines/flow/ReadonlySharedFlow;-><init>(Lkotlinx/coroutines/flow/MutableSharedFlow;)V

    .line 29
    .line 30
    .line 31
    iput-object v4, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;->updateListFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 32
    .line 33
    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iput-object v3, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;->_saveReadingListFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 38
    .line 39
    new-instance v4, Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 40
    .line 41
    invoke-direct {v4, v3}, Lkotlinx/coroutines/flow/ReadonlySharedFlow;-><init>(Lkotlinx/coroutines/flow/MutableSharedFlow;)V

    .line 42
    .line 43
    .line 44
    iput-object v4, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;->saveReadingListFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 45
    .line 46
    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;->_deleteSelectedPagesFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 51
    .line 52
    new-instance v1, Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 53
    .line 54
    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/ReadonlySharedFlow;-><init>(Lkotlinx/coroutines/flow/MutableSharedFlow;)V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;->deleteSelectedPagesFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 58
    .line 59
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;->_recommendedListFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 64
    .line 65
    new-instance v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 66
    .line 67
    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 68
    .line 69
    .line 70
    iput-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;->recommendedListFlow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 71
    .line 72
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    new-instance v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 77
    .line 78
    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 79
    .line 80
    .line 81
    iput-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;->yirListFlow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 82
    .line 83
    return-void
.end method
