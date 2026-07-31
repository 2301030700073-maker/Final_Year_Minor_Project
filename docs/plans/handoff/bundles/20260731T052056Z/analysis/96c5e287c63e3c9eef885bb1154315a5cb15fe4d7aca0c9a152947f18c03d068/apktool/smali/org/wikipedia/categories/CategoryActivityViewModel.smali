.class public final Lorg/wikipedia/categories/CategoryActivityViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final categoryMembersFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final pageTitle:Lorg/wikipedia/page/PageTitle;

.field public showSubcategories:Z

.field public final subcategoriesFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;)V
    .locals 7

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
    iput-object p1, p0, Lorg/wikipedia/categories/CategoryActivityViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

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
    new-instance v2, Lorg/wikipedia/categories/CategoryActivityViewModel$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/categories/CategoryActivityViewModel$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/categories/CategoryActivityViewModel;I)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Landroidx/paging/PageFetcher;

    .line 36
    .line 37
    new-instance v5, Landroidx/paging/Pager$pageFetcher$2;

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    invoke-direct {v5, v3, v2, v6}, Landroidx/paging/Pager$pageFetcher$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v4, v5, p1}, Landroidx/paging/PageFetcher;-><init>(Landroidx/paging/Pager$pageFetcher$2;Landroidx/paging/PagingConfig;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, v4, Landroidx/paging/PageFetcher;->flow:Lkotlinx/coroutines/flow/Flow;

    .line 47
    .line 48
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {p1, v2}, Landroidx/paging/FlowExtKt;->cachedIn(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lorg/wikipedia/categories/CategoryActivityViewModel;->categoryMembersFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 57
    .line 58
    new-instance p1, Landroidx/paging/PagingConfig;

    .line 59
    .line 60
    invoke-direct {p1, v0, v1}, Landroidx/paging/PagingConfig;-><init>(II)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lorg/wikipedia/categories/CategoryActivityViewModel$$ExternalSyntheticLambda0;

    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/categories/CategoryActivityViewModel$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/categories/CategoryActivityViewModel;I)V

    .line 67
    .line 68
    .line 69
    new-instance v1, Landroidx/paging/PageFetcher;

    .line 70
    .line 71
    new-instance v2, Landroidx/paging/Pager$pageFetcher$2;

    .line 72
    .line 73
    invoke-direct {v2, v3, v0, v6}, Landroidx/paging/Pager$pageFetcher$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {v1, v2, p1}, Landroidx/paging/PageFetcher;-><init>(Landroidx/paging/Pager$pageFetcher$2;Landroidx/paging/PagingConfig;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, v1, Landroidx/paging/PageFetcher;->flow:Lkotlinx/coroutines/flow/Flow;

    .line 80
    .line 81
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {p1, v0}, Landroidx/paging/FlowExtKt;->cachedIn(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iput-object p1, p0, Lorg/wikipedia/categories/CategoryActivityViewModel;->subcategoriesFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 90
    .line 91
    return-void
.end method
