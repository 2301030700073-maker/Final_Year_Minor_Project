.class public final Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public actionModeActive:Z

.field public cachedContinueKey:Ljava/lang/String;

.field public final cachedRevisions:Ljava/util/ArrayList;

.field public comparing:Z

.field public currentQuery:Ljava/lang/String;

.field public final editHistoryFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final editHistoryStatsData:Landroidx/lifecycle/MutableLiveData;

.field public pageId:I

.field public final pageTitle:Lorg/wikipedia/page/PageTitle;

.field public selectedRevisionFrom:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

.field public selectedRevisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->editHistoryStatsData:Landroidx/lifecycle/MutableLiveData;

    .line 13
    .line 14
    const-string v0, "title"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 24
    .line 25
    iput-object p1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 26
    .line 27
    const/4 p1, -0x1

    .line 28
    iput p1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->pageId:I

    .line 29
    .line 30
    const-string p1, ""

    .line 31
    .line 32
    iput-object p1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->currentQuery:Ljava/lang/String;

    .line 33
    .line 34
    new-instance p1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->cachedRevisions:Ljava/util/ArrayList;

    .line 40
    .line 41
    new-instance p1, Landroidx/paging/PagingConfig;

    .line 42
    .line 43
    const/16 v0, 0x32

    .line 44
    .line 45
    const/16 v1, 0x3e

    .line 46
    .line 47
    invoke-direct {p1, v0, v1}, Landroidx/paging/PagingConfig;-><init>(II)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;

    .line 51
    .line 52
    const/16 v1, 0x11

    .line 53
    .line 54
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Landroidx/paging/PageFetcher;

    .line 58
    .line 59
    new-instance v2, Landroidx/paging/Pager$pageFetcher$2;

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    const/4 v4, 0x0

    .line 63
    invoke-direct {v2, v3, v0, v4}, Landroidx/paging/Pager$pageFetcher$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {v1, v2, p1}, Landroidx/paging/PageFetcher;-><init>(Landroidx/paging/Pager$pageFetcher$2;Landroidx/paging/PagingConfig;)V

    .line 67
    .line 68
    .line 69
    new-instance p1, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;

    .line 70
    .line 71
    const/16 v0, 0x8

    .line 72
    .line 73
    iget-object v1, v1, Landroidx/paging/PageFetcher;->flow:Lkotlinx/coroutines/flow/Flow;

    .line 74
    .line 75
    invoke-direct {p1, v0, v1, p0}, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {p1, v0}, Landroidx/paging/FlowExtKt;->cachedIn(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->editHistoryFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 87
    .line 88
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    sget-object v0, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 93
    .line 94
    new-instance v1, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;

    .line 95
    .line 96
    const/16 v2, 0x15

    .line 97
    .line 98
    invoke-direct {v1, v0, v2}, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 99
    .line 100
    .line 101
    new-instance v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;

    .line 102
    .line 103
    invoke-direct {v0, p0, v4}, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;Lkotlin/coroutines/Continuation;)V

    .line 104
    .line 105
    .line 106
    const/4 p0, 0x2

    .line 107
    invoke-static {p1, v1, v4, v0, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 108
    .line 109
    .line 110
    return-void
.end method
