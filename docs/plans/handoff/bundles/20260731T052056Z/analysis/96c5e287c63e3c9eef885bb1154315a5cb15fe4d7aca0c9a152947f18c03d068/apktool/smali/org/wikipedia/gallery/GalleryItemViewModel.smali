.class public final Lorg/wikipedia/gallery/GalleryItemViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final imageTitle:Lorg/wikipedia/page/PageTitle;

.field public final mediaListItem:Lorg/wikipedia/gallery/MediaListItem;

.field public mediaPage:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

.field public final uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


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
    const-string v0, "galleryItem"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    check-cast v0, Lorg/wikipedia/gallery/MediaListItem;

    .line 17
    .line 18
    iget-object v1, v0, Lorg/wikipedia/gallery/MediaListItem;->title:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryItemViewModel;->mediaListItem:Lorg/wikipedia/gallery/MediaListItem;

    .line 21
    .line 22
    const-string v0, "title"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    new-instance p1, Lorg/wikipedia/page/PageTitle;

    .line 34
    .line 35
    sget-object v2, Lorg/wikipedia/Constants;->commonsWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 36
    .line 37
    invoke-direct {p1, v1, v2, v0}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    new-instance v2, Lorg/wikipedia/page/PageTitle;

    .line 41
    .line 42
    sget-object v3, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 43
    .line 44
    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->removeNamespace(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v3, "File:"

    .line 49
    .line 50
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget-object p1, p1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 55
    .line 56
    invoke-direct {v2, v1, p1, v0}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iput-object v2, p0, Lorg/wikipedia/gallery/GalleryItemViewModel;->imageTitle:Lorg/wikipedia/page/PageTitle;

    .line 60
    .line 61
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryItemViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 66
    .line 67
    new-instance v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 68
    .line 69
    invoke-direct {v1, p1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 70
    .line 71
    .line 72
    iput-object v1, p0, Lorg/wikipedia/gallery/GalleryItemViewModel;->uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 73
    .line 74
    new-instance v1, Lorg/wikipedia/util/Resource$Loading;

    .line 75
    .line 76
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    new-instance v1, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 87
    .line 88
    invoke-direct {v1, p0}, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/gallery/GalleryItemViewModel;)V

    .line 89
    .line 90
    .line 91
    new-instance v2, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 92
    .line 93
    const/4 v3, 0x3

    .line 94
    invoke-direct {v2, v3, p0, v0}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 95
    .line 96
    .line 97
    const/4 p0, 0x2

    .line 98
    invoke-static {p1, v1, v0, v2, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 99
    .line 100
    .line 101
    return-void
.end method
