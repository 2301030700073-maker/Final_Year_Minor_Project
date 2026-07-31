.class public final Lorg/wikipedia/edit/templates/TemplatesSearchViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final isFromDiff:Z

.field public searchQuery:Ljava/lang/String;

.field public final searchTemplatesFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public selectedPageTitle:Lorg/wikipedia/page/PageTitle;

.field public final uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final wikiSite:Lorg/wikipedia/dataclient/WikiSite;


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
    const-string v0, "invokeSource"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    check-cast v0, Lorg/wikipedia/Constants$InvokeSource;

    .line 17
    .line 18
    const-string/jumbo v0, "wikiSite"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    check-cast v0, Lorg/wikipedia/dataclient/WikiSite;

    .line 29
    .line 30
    iput-object v0, p0, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 31
    .line 32
    const-string v0, "isFromDiff"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Ljava/lang/Boolean;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move p1, v0

    .line 49
    :goto_0
    iput-boolean p1, p0, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel;->isFromDiff:Z

    .line 50
    .line 51
    new-instance p1, Landroidx/paging/PagingConfig;

    .line 52
    .line 53
    const/16 v1, 0xa

    .line 54
    .line 55
    const/16 v2, 0x3e

    .line 56
    .line 57
    invoke-direct {p1, v1, v2}, Landroidx/paging/PagingConfig;-><init>(II)V

    .line 58
    .line 59
    .line 60
    new-instance v1, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;

    .line 61
    .line 62
    const/16 v2, 0x8

    .line 63
    .line 64
    invoke-direct {v1, v2, p0}, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    new-instance v2, Landroidx/paging/PageFetcher;

    .line 68
    .line 69
    new-instance v3, Landroidx/paging/Pager$pageFetcher$2;

    .line 70
    .line 71
    const/4 v4, 0x0

    .line 72
    invoke-direct {v3, v0, v1, v4}, Landroidx/paging/Pager$pageFetcher$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 73
    .line 74
    .line 75
    invoke-direct {v2, v3, p1}, Landroidx/paging/PageFetcher;-><init>(Landroidx/paging/Pager$pageFetcher$2;Landroidx/paging/PagingConfig;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, v2, Landroidx/paging/PageFetcher;->flow:Lkotlinx/coroutines/flow/Flow;

    .line 79
    .line 80
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {p1, v0}, Landroidx/paging/FlowExtKt;->cachedIn(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel;->searchTemplatesFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 89
    .line 90
    new-instance p1, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel$UiState;

    .line 91
    .line 92
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iput-object p1, p0, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel;->uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 100
    .line 101
    return-void
.end method
