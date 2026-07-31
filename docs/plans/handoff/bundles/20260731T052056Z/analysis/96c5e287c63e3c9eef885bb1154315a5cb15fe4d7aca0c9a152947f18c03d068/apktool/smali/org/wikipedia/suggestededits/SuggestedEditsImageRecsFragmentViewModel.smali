.class public final Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public attemptInsertInfobox:Z

.field public final handler:Lorg/wikipedia/util/ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;

.field public final langCode:Ljava/lang/String;

.field public pageTitle:Lorg/wikipedia/page/PageTitle;

.field public recommendation:Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;

.field public recommendedImageTitle:Lorg/wikipedia/page/PageTitle;

.field public summary:Lorg/wikipedia/dataclient/page/PageSummary;

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
    invoke-direct {v0, p0}, Lorg/wikipedia/util/ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->handler:Lorg/wikipedia/util/ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;

    .line 13
    .line 14
    const-string v0, "lang"

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
    check-cast p1, Ljava/lang/String;

    .line 24
    .line 25
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->langCode:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 32
    .line 33
    new-instance v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 34
    .line 35
    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->fetchRecommendation()V

    .line 41
    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final fetchRecommendation()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/util/Resource$Loading;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

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
    new-instance v1, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;

    .line 20
    .line 21
    invoke-direct {v1, p0, v2}, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onReceive$1$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;Lkotlin/coroutines/Continuation;)V

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->handler:Lorg/wikipedia/util/ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;

    .line 26
    .line 27
    invoke-static {v0, p0, v2, v1, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final getPageTitle()Lorg/wikipedia/page/PageTitle;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "pageTitle"

    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final getRecommendation()Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->recommendation:Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "recommendation"

    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method
