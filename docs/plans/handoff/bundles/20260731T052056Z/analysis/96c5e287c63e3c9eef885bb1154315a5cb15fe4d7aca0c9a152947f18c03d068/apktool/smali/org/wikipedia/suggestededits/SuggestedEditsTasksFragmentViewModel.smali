.class public final Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public allowToPatrolEdits:Z

.field public blockMessageCommons:Ljava/lang/String;

.field public blockMessageWikidata:Ljava/lang/String;

.field public blockMessageWikipedia:Ljava/lang/String;

.field public clientJob:Lkotlinx/coroutines/StandaloneCoroutine;

.field public final handler:Lorg/wikipedia/util/ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;

.field public homeContributions:I

.field public totalContributions:I

.field public final uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public wikiSupportsImageRecommendations:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/util/ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lorg/wikipedia/util/ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->handler:Lorg/wikipedia/util/ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;

    .line 10
    .line 11
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 16
    .line 17
    new-instance v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 23
    .line 24
    return-void
.end method
