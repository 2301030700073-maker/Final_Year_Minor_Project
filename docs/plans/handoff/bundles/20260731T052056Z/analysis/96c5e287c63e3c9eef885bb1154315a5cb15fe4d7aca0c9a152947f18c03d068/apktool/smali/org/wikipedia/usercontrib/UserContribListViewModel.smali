.class public final Lorg/wikipedia/usercontrib/UserContribListViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public actionModeActive:Z

.field public cachedContinueKey:Ljava/lang/String;

.field public final cachedContribs:Ljava/util/ArrayList;

.field public currentQuery:Ljava/lang/String;

.field public langCode:Ljava/lang/String;

.field public final userContribFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final userContribStatsData:Landroidx/lifecycle/MutableLiveData;

.field public final userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/wikipedia/usercontrib/UserContribListViewModel;->userContribStatsData:Landroidx/lifecycle/MutableLiveData;

    .line 13
    .line 14
    const-string/jumbo v0, "userName"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    check-cast p1, Ljava/lang/String;

    .line 25
    .line 26
    iput-object p1, p0, Lorg/wikipedia/usercontrib/UserContribListViewModel;->userName:Ljava/lang/String;

    .line 27
    .line 28
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 29
    .line 30
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getUserContribFilterLangCode()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lorg/wikipedia/usercontrib/UserContribListViewModel;->langCode:Ljava/lang/String;

    .line 35
    .line 36
    const-string p1, ""

    .line 37
    .line 38
    iput-object p1, p0, Lorg/wikipedia/usercontrib/UserContribListViewModel;->currentQuery:Ljava/lang/String;

    .line 39
    .line 40
    new-instance p1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lorg/wikipedia/usercontrib/UserContribListViewModel;->cachedContribs:Ljava/util/ArrayList;

    .line 46
    .line 47
    new-instance p1, Landroidx/paging/PagingConfig;

    .line 48
    .line 49
    const/16 v0, 0x32

    .line 50
    .line 51
    const/16 v1, 0x3e

    .line 52
    .line 53
    invoke-direct {p1, v0, v1}, Landroidx/paging/PagingConfig;-><init>(II)V

    .line 54
    .line 55
    .line 56
    new-instance v0, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda4;

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    new-instance v1, Landroidx/paging/PageFetcher;

    .line 63
    .line 64
    new-instance v2, Landroidx/paging/Pager$pageFetcher$2;

    .line 65
    .line 66
    const/4 v3, 0x0

    .line 67
    const/4 v4, 0x0

    .line 68
    invoke-direct {v2, v3, v0, v4}, Landroidx/paging/Pager$pageFetcher$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {v1, v2, p1}, Landroidx/paging/PageFetcher;-><init>(Landroidx/paging/Pager$pageFetcher$2;Landroidx/paging/PagingConfig;)V

    .line 72
    .line 73
    .line 74
    new-instance p1, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;

    .line 75
    .line 76
    const/16 v0, 0xa

    .line 77
    .line 78
    iget-object v1, v1, Landroidx/paging/PageFetcher;->flow:Lkotlinx/coroutines/flow/Flow;

    .line 79
    .line 80
    invoke-direct {p1, v0, v1, p0}, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {p1, v0}, Landroidx/paging/FlowExtKt;->cachedIn(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iput-object p1, p0, Lorg/wikipedia/usercontrib/UserContribListViewModel;->userContribFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 92
    .line 93
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    sget-object v0, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 98
    .line 99
    new-instance v1, Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    .line 100
    .line 101
    const/16 v2, 0x13

    .line 102
    .line 103
    invoke-direct {v1, v0, v2}, Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 104
    .line 105
    .line 106
    new-instance v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 107
    .line 108
    invoke-direct {v0, v2, p0, v4}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 109
    .line 110
    .line 111
    const/4 p0, 0x2

    .line 112
    invoke-static {p1, v1, v4, v0, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 113
    .line 114
    .line 115
    return-void
.end method


# virtual methods
.method public final excludedFiltersCount()I
    .locals 3

    .line 1
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 2
    .line 3
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getUserContribFilterExcludedNs()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lorg/wikipedia/usercontrib/UserContribFilterActivity;->NAMESPACE_LIST:Ljava/util/List;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/lang/Number;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    if-ltz v1, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-static {}, Landroidx/room/Room;->throwCountOverflow()V

    .line 55
    .line 56
    .line 57
    const/4 p0, 0x0

    .line 58
    throw p0

    .line 59
    :cond_3
    return v1
.end method

.method public final getWikiSite()Lorg/wikipedia/dataclient/WikiSite;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/usercontrib/UserContribListViewModel;->langCode:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "commons"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance p0, Lorg/wikipedia/dataclient/WikiSite;

    .line 12
    .line 13
    const-string v0, "https://commons.wikimedia.org/"

    .line 14
    .line 15
    invoke-direct {p0, v0}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    const-string/jumbo v1, "wikidata"

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    new-instance p0, Lorg/wikipedia/dataclient/WikiSite;

    .line 29
    .line 30
    const-string v0, "https://www.wikidata.org/"

    .line 31
    .line 32
    invoke-direct {p0, v0}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_1
    sget-object v0, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 37
    .line 38
    iget-object p0, p0, Lorg/wikipedia/usercontrib/UserContribListViewModel;->langCode:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {p0}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method
