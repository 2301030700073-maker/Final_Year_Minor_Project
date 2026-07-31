.class public final Lorg/wikipedia/watchlist/WatchlistExpiryDialogViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final handler:Lorg/wikipedia/util/ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;

.field public final pageTitle:Lorg/wikipedia/page/PageTitle;

.field public final uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lorg/wikipedia/util/ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lorg/wikipedia/util/ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/watchlist/WatchlistExpiryDialogViewModel;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/wikipedia/watchlist/WatchlistExpiryDialogViewModel;->handler:Lorg/wikipedia/util/ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;

    .line 13
    .line 14
    const-string v0, "pageTitle"

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
    iput-object p1, p0, Lorg/wikipedia/watchlist/WatchlistExpiryDialogViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 26
    .line 27
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lorg/wikipedia/watchlist/WatchlistExpiryDialogViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 32
    .line 33
    new-instance v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 34
    .line 35
    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lorg/wikipedia/watchlist/WatchlistExpiryDialogViewModel;->uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 39
    .line 40
    return-void
.end method
