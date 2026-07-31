.class public final Lorg/wikipedia/commons/FilePageViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final allowEdit:Z

.field public final handler:Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

.field public mediaInfo:Lorg/wikipedia/gallery/ImageInfo;

.field public pageSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

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
    new-instance v0, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/commons/FilePageViewModel;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/wikipedia/commons/FilePageViewModel;->handler:Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 13
    .line 14
    const-string v0, "allowEdit"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Boolean;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x1

    .line 30
    :goto_0
    iput-boolean v0, p0, Lorg/wikipedia/commons/FilePageViewModel;->allowEdit:Z

    .line 31
    .line 32
    const-string v0, "title"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 42
    .line 43
    iput-object p1, p0, Lorg/wikipedia/commons/FilePageViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 44
    .line 45
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lorg/wikipedia/commons/FilePageViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 50
    .line 51
    new-instance v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 52
    .line 53
    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lorg/wikipedia/commons/FilePageViewModel;->uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 57
    .line 58
    invoke-virtual {p0}, Lorg/wikipedia/commons/FilePageViewModel;->loadImageInfo()V

    .line 59
    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public final loadImageInfo()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/util/Resource$Loading;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/wikipedia/commons/FilePageViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v2, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;

    .line 20
    .line 21
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;-><init>(Lorg/wikipedia/commons/FilePageViewModel;Lkotlin/coroutines/Continuation;)V

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    iget-object p0, p0, Lorg/wikipedia/commons/FilePageViewModel;->handler:Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 26
    .line 27
    invoke-static {v0, p0, v2, v1, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 28
    .line 29
    .line 30
    return-void
.end method
