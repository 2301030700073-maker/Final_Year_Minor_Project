.class public final Lorg/wikipedia/gallery/GalleryViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _descriptionState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final descriptionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public initialFilename:Ljava/lang/String;

.field public final pageTitle:Lorg/wikipedia/page/PageTitle;

.field public final revision:Ljava/lang/Long;

.field public final uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final wikiSite:Lorg/wikipedia/dataclient/WikiSite;


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
    const-string v0, "title"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 14
    .line 15
    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 16
    .line 17
    const-string/jumbo v0, "wikiSite"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    check-cast v0, Lorg/wikipedia/dataclient/WikiSite;

    .line 28
    .line 29
    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryViewModel;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 30
    .line 31
    const-string v0, "revision"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/Long;

    .line 38
    .line 39
    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryViewModel;->revision:Ljava/lang/Long;

    .line 40
    .line 41
    const-string v0, "filename"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Ljava/lang/String;

    .line 48
    .line 49
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryViewModel;->initialFilename:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 56
    .line 57
    new-instance v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 58
    .line 59
    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryViewModel;->uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 63
    .line 64
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryViewModel;->_descriptionState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 69
    .line 70
    new-instance v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 71
    .line 72
    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryViewModel;->descriptionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 76
    .line 77
    return-void
.end method


# virtual methods
.method public final fetchGalleryItems()V
    .locals 5

    .line 1
    new-instance v0, Lorg/wikipedia/util/Resource$Loading;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/wikipedia/gallery/GalleryViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

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
    new-instance v1, Lorg/wikipedia/gallery/GalleryViewModel$fetchGalleryItems$$inlined$CoroutineExceptionHandler$1;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-direct {v1, p0, v3}, Lorg/wikipedia/gallery/GalleryViewModel$fetchGalleryItems$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/gallery/GalleryViewModel;I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 26
    .line 27
    const/16 v4, 0xf

    .line 28
    .line 29
    invoke-direct {v3, v4, p0, v2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x2

    .line 33
    invoke-static {v0, v1, v2, v3, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 34
    .line 35
    .line 36
    return-void
.end method
