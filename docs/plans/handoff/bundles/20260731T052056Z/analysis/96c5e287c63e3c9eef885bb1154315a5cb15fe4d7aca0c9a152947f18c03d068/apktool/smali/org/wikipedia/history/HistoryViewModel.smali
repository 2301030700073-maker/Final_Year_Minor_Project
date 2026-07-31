.class public final Lorg/wikipedia/history/HistoryViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final deleteHistoryItemsAction:Lorg/wikipedia/util/SingleLiveData;

.field public final handler:Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

.field public final historyItems:Landroidx/lifecycle/MutableLiveData;

.field public searchJob:Lkotlinx/coroutines/StandaloneCoroutine;

.field public searchQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/history/HistoryViewModel;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/wikipedia/history/HistoryViewModel;->handler:Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 10
    .line 11
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    new-instance v1, Lorg/wikipedia/util/Resource;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lorg/wikipedia/history/HistoryViewModel;->historyItems:Landroidx/lifecycle/MutableLiveData;

    .line 22
    .line 23
    new-instance v0, Lorg/wikipedia/util/SingleLiveData;

    .line 24
    .line 25
    invoke-direct {v0}, Lorg/wikipedia/util/SingleLiveData;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lorg/wikipedia/history/HistoryViewModel;->deleteHistoryItemsAction:Lorg/wikipedia/util/SingleLiveData;

    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/wikipedia/history/HistoryViewModel;->reloadHistoryItems()V

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final onCleared()V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/wikipedia/history/HistoryViewModel;->searchJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final reloadHistoryItems()V
    .locals 4

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/wikipedia/history/HistoryViewModel$searchQuery$1;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x2

    .line 9
    invoke-direct {v1, p0, v2, v3}, Lorg/wikipedia/history/HistoryViewModel$searchQuery$1;-><init>(Lorg/wikipedia/history/HistoryViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lorg/wikipedia/history/HistoryViewModel;->handler:Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 13
    .line 14
    invoke-static {v0, p0, v2, v1, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final setSearchQuery(Ljava/lang/String;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lorg/wikipedia/history/HistoryViewModel;->searchQuery:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p1, p0, Lorg/wikipedia/history/HistoryViewModel;->searchJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v1, Lorg/wikipedia/history/HistoryViewModel$searchQuery$1;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {v1, p0, v0, v2}, Lorg/wikipedia/history/HistoryViewModel$searchQuery$1;-><init>(Lorg/wikipedia/history/HistoryViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    invoke-static {p1, v0, v0, v1, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lorg/wikipedia/history/HistoryViewModel;->searchJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 27
    .line 28
    return-void
.end method
