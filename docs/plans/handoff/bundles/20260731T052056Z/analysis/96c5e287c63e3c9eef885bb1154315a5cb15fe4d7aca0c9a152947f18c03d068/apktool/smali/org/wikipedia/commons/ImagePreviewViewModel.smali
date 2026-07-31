.class public final Lorg/wikipedia/commons/ImagePreviewViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

.field public final pageSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

.field public final uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;)V
    .locals 3

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
    invoke-direct {v0, p0}, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/commons/ImagePreviewViewModel;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "summary"

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    check-cast v1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 22
    .line 23
    iput-object v1, p0, Lorg/wikipedia/commons/ImagePreviewViewModel;->pageSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 24
    .line 25
    const-string v1, "action"

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 32
    .line 33
    iput-object p1, p0, Lorg/wikipedia/commons/ImagePreviewViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 34
    .line 35
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lorg/wikipedia/commons/ImagePreviewViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 40
    .line 41
    new-instance v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 42
    .line 43
    invoke-direct {v1, p1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lorg/wikipedia/commons/ImagePreviewViewModel;->uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 47
    .line 48
    new-instance v1, Lorg/wikipedia/util/Resource$Loading;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-virtual {p1, v2, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance v1, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;

    .line 62
    .line 63
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;-><init>(Lorg/wikipedia/commons/ImagePreviewViewModel;Lkotlin/coroutines/Continuation;)V

    .line 64
    .line 65
    .line 66
    const/4 p0, 0x2

    .line 67
    invoke-static {p1, v0, v2, v1, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 68
    .line 69
    .line 70
    return-void
.end method
