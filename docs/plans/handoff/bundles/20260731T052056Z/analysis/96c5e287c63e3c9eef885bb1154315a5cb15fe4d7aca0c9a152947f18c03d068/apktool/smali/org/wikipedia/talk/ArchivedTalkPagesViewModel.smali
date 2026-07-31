.class public final Lorg/wikipedia/talk/ArchivedTalkPagesViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final archivedTalkPagesFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final pageTitle:Lorg/wikipedia/page/PageTitle;


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
    const-string v0, "title"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 17
    .line 18
    iput-object p1, p0, Lorg/wikipedia/talk/ArchivedTalkPagesViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 19
    .line 20
    new-instance p1, Landroidx/paging/PagingConfig;

    .line 21
    .line 22
    const/16 v0, 0xa

    .line 23
    .line 24
    const/16 v1, 0x3e

    .line 25
    .line 26
    invoke-direct {p1, v0, v1}, Landroidx/paging/PagingConfig;-><init>(II)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    const/16 v1, 0x1c

    .line 32
    .line 33
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Landroidx/paging/PageFetcher;

    .line 37
    .line 38
    new-instance v2, Landroidx/paging/Pager$pageFetcher$2;

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-direct {v2, v3, v0, v4}, Landroidx/paging/Pager$pageFetcher$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, v2, p1}, Landroidx/paging/PageFetcher;-><init>(Landroidx/paging/Pager$pageFetcher$2;Landroidx/paging/PagingConfig;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, v1, Landroidx/paging/PageFetcher;->flow:Lkotlinx/coroutines/flow/Flow;

    .line 49
    .line 50
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {p1, v0}, Landroidx/paging/FlowExtKt;->cachedIn(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lorg/wikipedia/talk/ArchivedTalkPagesViewModel;->archivedTalkPagesFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 59
    .line 60
    return-void
.end method
