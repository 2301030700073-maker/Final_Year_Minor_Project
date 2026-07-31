.class public final Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _uiSourceState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final availableSources:Ljava/util/ArrayList;

.field public final fromSettings:Z

.field public final uiSourceState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v0, "fromSettings"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput-boolean p1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;->fromSettings:Z

    .line 20
    .line 21
    new-instance p1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;->availableSources:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;->_uiSourceState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 33
    .line 34
    new-instance v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 35
    .line 36
    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;->uiSourceState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 40
    .line 41
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v0, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Lorg/wikipedia/random/RandomViewModel$loadMore$2;

    .line 51
    .line 52
    const/4 v2, 0x5

    .line 53
    const/4 v3, 0x0

    .line 54
    invoke-direct {v1, p0, v3, v2}, Lorg/wikipedia/random/RandomViewModel$loadMore$2;-><init>(Landroidx/lifecycle/ViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 55
    .line 56
    .line 57
    const/4 p0, 0x2

    .line 58
    invoke-static {p1, v0, v3, v1, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 59
    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public final saveSourceSelection()Lkotlin/Pair;
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;->_uiSourceState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/util/Resource;

    .line 8
    .line 9
    instance-of v0, p0, Lorg/wikipedia/util/Resource$Success;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    check-cast p0, Lorg/wikipedia/util/Resource$Success;

    .line 14
    .line 15
    iget-object p0, p0, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel$SourceSelectionUiState;

    .line 18
    .line 19
    iget-object p0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel$SourceSelectionUiState;->selectedSource:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 20
    .line 21
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const v0, 0x7f12066f

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lkotlin/Pair;

    .line 37
    .line 38
    sget-object v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;->INTERESTS:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 39
    .line 40
    if-ne p0, v1, :cond_0

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v1, 0x0

    .line 45
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v0, v1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_1
    new-instance p0, Lkotlin/Pair;

    .line 54
    .line 55
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 56
    .line 57
    sget-object v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;->INTERESTS:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 58
    .line 59
    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-object p0
.end method

.method public final updateSourceSelection(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;->_uiSourceState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/wikipedia/util/Resource;

    .line 8
    .line 9
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Success;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Lorg/wikipedia/util/Resource$Success;

    .line 14
    .line 15
    new-instance v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel$SourceSelectionUiState;

    .line 16
    .line 17
    check-cast v0, Lorg/wikipedia/util/Resource$Success;

    .line 18
    .line 19
    iget-object v0, v0, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel$SourceSelectionUiState;

    .line 22
    .line 23
    iget-boolean v3, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel$SourceSelectionUiState;->isSavedOptionEnabled:Z

    .line 24
    .line 25
    iget-boolean v0, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel$SourceSelectionUiState;->isHistoryOptionEnabled:Z

    .line 26
    .line 27
    invoke-direct {v2, v3, v0, p1}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel$SourceSelectionUiState;-><init>(ZZLorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method
