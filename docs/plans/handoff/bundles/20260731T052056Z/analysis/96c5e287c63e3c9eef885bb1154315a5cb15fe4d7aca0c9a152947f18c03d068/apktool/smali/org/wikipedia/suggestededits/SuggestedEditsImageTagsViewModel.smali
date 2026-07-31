.class public final Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _actionState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final actionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 9
    .line 10
    new-instance v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel;->uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 16
    .line 17
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel;->_actionState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 22
    .line 23
    new-instance v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel;->actionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 29
    .line 30
    return-void
.end method
