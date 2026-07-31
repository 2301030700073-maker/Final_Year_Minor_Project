.class public final Lorg/wikipedia/search/SearchResultsViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _hybridSearchResultState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _languageCode:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _lexicalResultsForLogging:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _refreshSearchResults:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _searchTerm:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _searchTermForLogging:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final batchSize:I

.field public final countsPerLanguageCode:Ljava/util/ArrayList;

.field public final hybridSearchResultState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public invokeSource:Lorg/wikipedia/Constants$InvokeSource;

.field public final languageCode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public lastXSearchIdFullText:Ljava/lang/String;

.field public lastXSearchIdPrefix:Ljava/lang/String;

.field public lastXSearchIdSemantic:Ljava/lang/String;

.field public final lexicalResultsForLogging:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public lexicalResultsTitlesForEvent:Ljava/lang/String;

.field public final searchResultsFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final searchTerm:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final searchTermForLogging:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public semanticResultsTitlesForEvent:Ljava/lang/String;

.field public final semanticSearchService:Lorg/wikipedia/search/SemanticSearchService;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    iput v0, p0, Lorg/wikipedia/search/SearchResultsViewModel;->batchSize:I

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lorg/wikipedia/search/SearchResultsViewModel;->countsPerLanguageCode:Ljava/util/ArrayList;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, p0, Lorg/wikipedia/search/SearchResultsViewModel;->_searchTerm:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 21
    .line 22
    new-instance v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 23
    .line 24
    invoke-direct {v2, v1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 25
    .line 26
    .line 27
    iput-object v2, p0, Lorg/wikipedia/search/SearchResultsViewModel;->searchTerm:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 28
    .line 29
    const/4 v2, 0x7

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-static {v3, v2, v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iput-object v2, p0, Lorg/wikipedia/search/SearchResultsViewModel;->_searchTermForLogging:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 36
    .line 37
    new-instance v4, Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 38
    .line 39
    invoke-direct {v4, v2}, Lkotlinx/coroutines/flow/ReadonlySharedFlow;-><init>(Lkotlinx/coroutines/flow/MutableSharedFlow;)V

    .line 40
    .line 41
    .line 42
    iput-object v4, p0, Lorg/wikipedia/search/SearchResultsViewModel;->searchTermForLogging:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 43
    .line 44
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iput-object v2, p0, Lorg/wikipedia/search/SearchResultsViewModel;->_lexicalResultsForLogging:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 49
    .line 50
    new-instance v4, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 51
    .line 52
    invoke-direct {v4, v2}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 53
    .line 54
    .line 55
    iput-object v4, p0, Lorg/wikipedia/search/SearchResultsViewModel;->lexicalResultsForLogging:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 56
    .line 57
    sget-object v2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 58
    .line 59
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCode()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iput-object v2, p0, Lorg/wikipedia/search/SearchResultsViewModel;->_languageCode:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 76
    .line 77
    new-instance v4, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 78
    .line 79
    invoke-direct {v4, v2}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 80
    .line 81
    .line 82
    iput-object v4, p0, Lorg/wikipedia/search/SearchResultsViewModel;->languageCode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 83
    .line 84
    sget-object v4, Lorg/wikipedia/util/UiState$Loading;->INSTANCE:Lorg/wikipedia/util/UiState$Loading;

    .line 85
    .line 86
    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    iput-object v4, p0, Lorg/wikipedia/search/SearchResultsViewModel;->_hybridSearchResultState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 91
    .line 92
    new-instance v5, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 93
    .line 94
    invoke-direct {v5, v4}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 95
    .line 96
    .line 97
    iput-object v5, p0, Lorg/wikipedia/search/SearchResultsViewModel;->hybridSearchResultState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 98
    .line 99
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    iput-object v4, p0, Lorg/wikipedia/search/SearchResultsViewModel;->_refreshSearchResults:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 108
    .line 109
    sget-object v5, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 110
    .line 111
    new-instance v6, Lorg/wikipedia/dataclient/WikiSite;

    .line 112
    .line 113
    const-string v7, "https://semantic-search.wmcloud.org/"

    .line 114
    .line 115
    invoke-direct {v6, v7}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const-class v8, Lorg/wikipedia/search/SemanticSearchService;

    .line 119
    .line 120
    invoke-virtual {v5, v6, v7, v8}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    check-cast v5, Lorg/wikipedia/search/SemanticSearchService;

    .line 125
    .line 126
    iput-object v5, p0, Lorg/wikipedia/search/SearchResultsViewModel;->semanticSearchService:Lorg/wikipedia/search/SemanticSearchService;

    .line 127
    .line 128
    const-string v5, ""

    .line 129
    .line 130
    iput-object v5, p0, Lorg/wikipedia/search/SearchResultsViewModel;->lastXSearchIdPrefix:Ljava/lang/String;

    .line 131
    .line 132
    iput-object v5, p0, Lorg/wikipedia/search/SearchResultsViewModel;->lastXSearchIdFullText:Ljava/lang/String;

    .line 133
    .line 134
    iput-object v5, p0, Lorg/wikipedia/search/SearchResultsViewModel;->lastXSearchIdSemantic:Ljava/lang/String;

    .line 135
    .line 136
    iput-object v5, p0, Lorg/wikipedia/search/SearchResultsViewModel;->semanticResultsTitlesForEvent:Ljava/lang/String;

    .line 137
    .line 138
    iput-object v5, p0, Lorg/wikipedia/search/SearchResultsViewModel;->lexicalResultsTitlesForEvent:Ljava/lang/String;

    .line 139
    .line 140
    new-instance v5, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 141
    .line 142
    const/16 v6, 0x1d

    .line 143
    .line 144
    invoke-direct {v5, v6}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 145
    .line 146
    .line 147
    new-instance v6, Landroidx/paging/PageFetcher$flow$1$2;

    .line 148
    .line 149
    invoke-direct {v6, v5, v1, v0}, Landroidx/paging/PageFetcher$flow$1$2;-><init>(Landroidx/work/Data$$ExternalSyntheticLambda0;Lkotlinx/coroutines/flow/StateFlowImpl;Lkotlin/coroutines/Continuation;)V

    .line 150
    .line 151
    .line 152
    new-instance v1, Lkotlinx/coroutines/flow/SafeFlow;

    .line 153
    .line 154
    const/4 v5, 0x6

    .line 155
    invoke-direct {v1, v5, v6}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(ILjava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    new-instance v6, Lorg/wikipedia/search/SearchResultsViewModel$searchResultsFlow$1;

    .line 159
    .line 160
    const/4 v7, 0x4

    .line 161
    invoke-direct {v6, v7, v0}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 162
    .line 163
    .line 164
    const/4 v7, 0x3

    .line 165
    new-array v7, v7, [Lkotlinx/coroutines/flow/Flow;

    .line 166
    .line 167
    aput-object v1, v7, v3

    .line 168
    .line 169
    const/4 v1, 0x1

    .line 170
    aput-object v2, v7, v1

    .line 171
    .line 172
    const/4 v1, 0x2

    .line 173
    aput-object v4, v7, v1

    .line 174
    .line 175
    new-instance v1, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;

    .line 176
    .line 177
    invoke-direct {v1, v5, v7, v6}, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    new-instance v2, Landroidx/paging/PageFetcher$flow$1$2;

    .line 181
    .line 182
    invoke-direct {v2, v0, p0}, Landroidx/paging/PageFetcher$flow$1$2;-><init>(Lkotlin/coroutines/Continuation;Lorg/wikipedia/search/SearchResultsViewModel;)V

    .line 183
    .line 184
    .line 185
    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt__MergeKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-static {v0, v1}, Landroidx/paging/FlowExtKt;->cachedIn(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    iput-object v0, p0, Lorg/wikipedia/search/SearchResultsViewModel;->searchResultsFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 198
    .line 199
    return-void
.end method


# virtual methods
.method public final getHybridEventActionContext(Lorg/wikipedia/search/SearchResult;)Lkotlin/collections/builders/MapBuilder;
    .locals 3

    .line 1
    new-instance v0, Lkotlin/collections/builders/MapBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "search_id_pre"

    .line 7
    .line 8
    iget-object v2, p0, Lorg/wikipedia/search/SearchResultsViewModel;->lastXSearchIdPrefix:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "search_id_ful"

    .line 14
    .line 15
    iget-object v2, p0, Lorg/wikipedia/search/SearchResultsViewModel;->lastXSearchIdFullText:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    const-string v1, "search_id_sem"

    .line 21
    .line 22
    iget-object p0, p0, Lorg/wikipedia/search/SearchResultsViewModel;->lastXSearchIdSemantic:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1, p0}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget p0, p1, Lorg/wikipedia/search/SearchResult;->indexInApiCall:I

    .line 30
    .line 31
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string v1, "position"

    .line 36
    .line 37
    invoke-virtual {v0, v1, p0}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    const-string/jumbo p0, "type"

    .line 41
    .line 42
    .line 43
    iget-object p1, p1, Lorg/wikipedia/search/SearchResult;->type:Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 44
    .line 45
    invoke-virtual {v0, p0, p1}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {v0}, Lkotlin/collections/builders/MapBuilder;->build()Lkotlin/collections/builders/MapBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public final getInvokeSource()Lorg/wikipedia/Constants$InvokeSource;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/search/SearchResultsViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "invokeSource"

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

.method public final getStandardEventActionContext(Lorg/wikipedia/search/SearchResult;)Lkotlin/collections/builders/MapBuilder;
    .locals 3

    .line 1
    new-instance v0, Lkotlin/collections/builders/MapBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "search_id_pre"

    .line 7
    .line 8
    iget-object v2, p0, Lorg/wikipedia/search/SearchResultsViewModel;->lastXSearchIdPrefix:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "search_id_ful"

    .line 14
    .line 15
    iget-object p0, p0, Lorg/wikipedia/search/SearchResultsViewModel;->lastXSearchIdFullText:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, p0}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget p0, p1, Lorg/wikipedia/search/SearchResult;->indexInApiCall:I

    .line 23
    .line 24
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string v1, "position"

    .line 29
    .line 30
    invoke-virtual {v0, v1, p0}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    const-string/jumbo p0, "type"

    .line 34
    .line 35
    .line 36
    iget-object p1, p1, Lorg/wikipedia/search/SearchResult;->type:Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 37
    .line 38
    invoke-virtual {v0, p0, p1}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {v0}, Lkotlin/collections/builders/MapBuilder;->build()Lkotlin/collections/builders/MapBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public final isHybridSearchExperimentOn()Z
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/search/HybridSearchAbCTest;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/wikipedia/search/HybridSearchAbCTest;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/search/SearchResultsViewModel;->languageCode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 7
    .line 8
    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 9
    .line 10
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lorg/wikipedia/search/HybridSearchAbCTest;->isHybridSearchEnabled(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public final refreshSearchResults()V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/wikipedia/search/SearchResultsViewModel;->_refreshSearchResults:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method
