.class public final Lorg/wikipedia/games/GamesHubViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _onThisDayGameUiState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final onThisDayGameUiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public selectedLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/wikipedia/util/UiState$Loading;->INSTANCE:Lorg/wikipedia/util/UiState$Loading;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lorg/wikipedia/games/GamesHubViewModel;->_onThisDayGameUiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 11
    .line 12
    new-instance v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lorg/wikipedia/games/GamesHubViewModel;->onThisDayGameUiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 18
    .line 19
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 20
    .line 21
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/lang/String;

    .line 42
    .line 43
    sget-object v2, Lorg/wikipedia/games/WikiGames;->WHICH_CAME_FIRST:Lorg/wikipedia/games/WikiGames;

    .line 44
    .line 45
    filled-new-array {v1}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v2, v3}, Lorg/wikipedia/games/WikiGames;->isLangSupported([Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    iput-object v1, p0, Lorg/wikipedia/games/GamesHubViewModel;->selectedLanguage:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p0, v1}, Lorg/wikipedia/games/GamesHubViewModel;->loadOnThisDayGamesPreviews(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    const-string p0, "Collection contains no element matching the predicate."

    .line 62
    .line 63
    invoke-static {p0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$3(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const/4 p0, 0x0

    .line 67
    throw p0
.end method


# virtual methods
.method public final loadOnThisDayGamesPreviews(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/games/GamesHubViewModel;)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lcoil3/RealImageLoader$execute$2;

    .line 14
    .line 15
    const/16 v3, 0xf

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-direct {v2, p0, p1, v4, v3}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x2

    .line 22
    invoke-static {v0, v1, v4, v2, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 23
    .line 24
    .line 25
    return-void
.end method
