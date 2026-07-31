.class public final Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final fromPlaces:Z

.field public final historyEntry:Lorg/wikipedia/history/HistoryEntry;

.field public isInReadingList:Z

.field public isWatched:Z

.field public final lastKnownLocation:Landroid/location/Location;

.field public location:Landroid/location/Location;

.field public pageTitle:Lorg/wikipedia/page/PageTitle;

.field public final uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewState$Loading;->INSTANCE:Lorg/wikipedia/page/linkpreview/LinkPreviewViewState$Loading;

    .line 8
    .line 9
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 14
    .line 15
    new-instance v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 21
    .line 22
    const-string v0, "entry"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    check-cast v0, Lorg/wikipedia/history/HistoryEntry;

    .line 32
    .line 33
    iput-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->historyEntry:Lorg/wikipedia/history/HistoryEntry;

    .line 34
    .line 35
    invoke-virtual {v0}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 40
    .line 41
    const-string v1, "location"

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Landroid/location/Location;

    .line 48
    .line 49
    iput-object v1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->location:Landroid/location/Location;

    .line 50
    .line 51
    iget v0, v0, Lorg/wikipedia/history/HistoryEntry;->source:I

    .line 52
    .line 53
    const/16 v1, 0x9

    .line 54
    .line 55
    if-ne v0, v1, :cond_0

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 v0, 0x0

    .line 60
    :goto_0
    iput-boolean v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->fromPlaces:Z

    .line 61
    .line 62
    const-string v0, "lastKnownLocation"

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Landroid/location/Location;

    .line 69
    .line 70
    iput-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->lastKnownLocation:Landroid/location/Location;

    .line 71
    .line 72
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    new-instance v0, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 77
    .line 78
    invoke-direct {v0, p0}, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;)V

    .line 79
    .line 80
    .line 81
    new-instance v1, Lcoil3/RealImageLoader$execute$result$1;

    .line 82
    .line 83
    const/16 v2, 0xf

    .line 84
    .line 85
    const/4 v3, 0x0

    .line 86
    invoke-direct {v1, v2, p0, v3}, Lcoil3/RealImageLoader$execute$result$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 87
    .line 88
    .line 89
    const/4 p0, 0x2

    .line 90
    invoke-static {p1, v0, v3, v1, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 91
    .line 92
    .line 93
    return-void
.end method
