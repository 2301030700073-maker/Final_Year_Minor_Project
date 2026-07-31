.class public final Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final Companion:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion;


# instance fields
.field public actionModeActive:Z

.field public cachedContinueKey:Ljava/lang/String;

.field public final cachedRecentEdits:Ljava/util/ArrayList;

.field public final cachedUserInfo:Ljava/util/ArrayList;

.field public currentQuery:Ljava/lang/String;

.field public langCode:Ljava/lang/String;

.field public final recentEditsFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 5
    .line 6
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->langCode:Ljava/lang/String;

    .line 15
    .line 16
    const-string v0, ""

    .line 17
    .line 18
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->currentQuery:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->cachedUserInfo:Ljava/util/ArrayList;

    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->cachedRecentEdits:Ljava/util/ArrayList;

    .line 33
    .line 34
    new-instance v0, Landroidx/paging/PagingConfig;

    .line 35
    .line 36
    const/16 v1, 0x36

    .line 37
    .line 38
    const/16 v2, 0x32

    .line 39
    .line 40
    invoke-direct {v0, v2, v1}, Landroidx/paging/PagingConfig;-><init>(II)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    const/16 v2, 0x1b

    .line 46
    .line 47
    invoke-direct {v1, v2, p0}, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance v2, Landroidx/paging/PageFetcher;

    .line 51
    .line 52
    new-instance v3, Landroidx/paging/Pager$pageFetcher$2;

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    const/4 v5, 0x0

    .line 56
    invoke-direct {v3, v4, v1, v5}, Landroidx/paging/Pager$pageFetcher$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {v2, v3, v0}, Landroidx/paging/PageFetcher;-><init>(Landroidx/paging/Pager$pageFetcher$2;Landroidx/paging/PagingConfig;)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;

    .line 63
    .line 64
    const/16 v1, 0x9

    .line 65
    .line 66
    iget-object v2, v2, Landroidx/paging/PageFetcher;->flow:Lkotlinx/coroutines/flow/Flow;

    .line 67
    .line 68
    invoke-direct {v0, v1, v2, p0}, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {v0, v1}, Landroidx/paging/FlowExtKt;->cachedIn(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->recentEditsFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 80
    .line 81
    return-void
.end method
