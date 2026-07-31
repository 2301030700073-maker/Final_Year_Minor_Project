.class public final Lorg/wikipedia/activitytab/ActivityTabViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _donationUiState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _impactUiState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _readingHistoryState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _scrollToGames:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _wikiGamesUiState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final allDataLoaded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public currentTimelinePagingSource:Lorg/wikipedia/activitytab/timeline/TimelinePagingSource;

.field public final donationUiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final impactUiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final readingHistoryState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final scrollToGames:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public shouldRefreshTimelineSilently:Z

.field public final timelineFlow:Lkotlinx/coroutines/flow/SafeFlow;

.field public final wikiGamesUiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>()V
    .locals 11

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
    move-result-object v1

    .line 10
    iput-object v1, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel;->_readingHistoryState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 11
    .line 12
    new-instance v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 13
    .line 14
    invoke-direct {v2, v1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 15
    .line 16
    .line 17
    iput-object v2, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel;->readingHistoryState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 18
    .line 19
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel;->_donationUiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 24
    .line 25
    new-instance v3, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 26
    .line 27
    invoke-direct {v3, v1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 28
    .line 29
    .line 30
    iput-object v3, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel;->donationUiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 31
    .line 32
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel;->_wikiGamesUiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 37
    .line 38
    new-instance v4, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 39
    .line 40
    invoke-direct {v4, v1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 41
    .line 42
    .line 43
    iput-object v4, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel;->wikiGamesUiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 44
    .line 45
    new-instance v1, Landroidx/paging/PagingConfig;

    .line 46
    .line 47
    const/16 v5, 0x96

    .line 48
    .line 49
    const/16 v6, 0x3c

    .line 50
    .line 51
    invoke-direct {v1, v5, v6}, Landroidx/paging/PagingConfig;-><init>(II)V

    .line 52
    .line 53
    .line 54
    new-instance v5, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;

    .line 55
    .line 56
    const/4 v6, 0x1

    .line 57
    invoke-direct {v5, v6, p0}, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    new-instance v7, Landroidx/paging/PageFetcher;

    .line 61
    .line 62
    new-instance v8, Landroidx/paging/Pager$pageFetcher$2;

    .line 63
    .line 64
    const/4 v9, 0x0

    .line 65
    const/4 v10, 0x0

    .line 66
    invoke-direct {v8, v9, v5, v10}, Landroidx/paging/Pager$pageFetcher$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {v7, v8, v1}, Landroidx/paging/PageFetcher;-><init>(Landroidx/paging/Pager$pageFetcher$2;Landroidx/paging/PagingConfig;)V

    .line 70
    .line 71
    .line 72
    iget-object v1, v7, Landroidx/paging/PageFetcher;->flow:Lkotlinx/coroutines/flow/Flow;

    .line 73
    .line 74
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-static {v1, v5}, Landroidx/paging/FlowExtKt;->cachedIn(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    new-instance v5, Lkotlinx/coroutines/flow/SafeFlow;

    .line 83
    .line 84
    const/4 v7, 0x7

    .line 85
    invoke-direct {v5, v7, v1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    iput-object v5, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel;->timelineFlow:Lkotlinx/coroutines/flow/SafeFlow;

    .line 89
    .line 90
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iput-object v0, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel;->_impactUiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 95
    .line 96
    new-instance v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 97
    .line 98
    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 99
    .line 100
    .line 101
    iput-object v1, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel;->impactUiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 102
    .line 103
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 104
    .line 105
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    iput-object v5, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel;->_scrollToGames:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 110
    .line 111
    new-instance v8, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 112
    .line 113
    invoke-direct {v8, v5}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 114
    .line 115
    .line 116
    iput-object v8, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel;->scrollToGames:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 117
    .line 118
    new-instance v5, Lorg/wikipedia/feed/HomeViewModel$forYouState$1;

    .line 119
    .line 120
    const/4 v8, 0x5

    .line 121
    invoke-direct {v5, v8, v6, v10}, Lorg/wikipedia/feed/HomeViewModel$forYouState$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 122
    .line 123
    .line 124
    const/4 v8, 0x4

    .line 125
    new-array v8, v8, [Lkotlinx/coroutines/flow/Flow;

    .line 126
    .line 127
    aput-object v2, v8, v9

    .line 128
    .line 129
    aput-object v3, v8, v6

    .line 130
    .line 131
    const/4 v2, 0x2

    .line 132
    aput-object v4, v8, v2

    .line 133
    .line 134
    const/4 v2, 0x3

    .line 135
    aput-object v1, v8, v2

    .line 136
    .line 137
    new-instance v1, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;

    .line 138
    .line 139
    invoke-direct {v1, v7, v8, v5}, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    sget-object v3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Lazily:Lkotlinx/coroutines/flow/StartedLazily;

    .line 147
    .line 148
    invoke-static {v1, v2, v3, v0}, Lkotlinx/coroutines/flow/StateFlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iput-object v0, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel;->allDataLoaded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 153
    .line 154
    return-void
.end method

.method public static getWikiSiteForTimeline()Lorg/wikipedia/dataclient/WikiSite;
    .locals 2

    .line 1
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 2
    .line 3
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getUserContribFilterLangCode()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "commons"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    new-instance v0, Lorg/wikipedia/dataclient/WikiSite;

    .line 16
    .line 17
    const-string v1, "https://commons.wikimedia.org/"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    const-string/jumbo v1, "wikidata"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    new-instance v0, Lorg/wikipedia/dataclient/WikiSite;

    .line 33
    .line 34
    const-string v1, "https://www.wikidata.org/"

    .line 35
    .line 36
    invoke-direct {v0, v1}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_1
    sget-object v1, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method


# virtual methods
.method public final getTotalEditsCount()I
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel;->_impactUiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/util/UiState;

    .line 8
    .line 9
    instance-of v0, p0, Lorg/wikipedia/util/UiState$Success;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast p0, Lorg/wikipedia/util/UiState$Success;

    .line 14
    .line 15
    iget-object p0, p0, Lorg/wikipedia/util/UiState$Success;->data:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Lkotlin/Pair;

    .line 18
    .line 19
    iget-object p0, p0, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;

    .line 22
    .line 23
    iget p0, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->totalEditsCount:I

    .line 24
    .line 25
    return p0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public final loadAll()V
    .locals 13

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadImpact$$inlined$CoroutineExceptionHandler$1;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadImpact$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/activitytab/ActivityTabViewModel;I)V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;-><init>(Lorg/wikipedia/activitytab/ActivityTabViewModel;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    invoke-static {v0, v1, v3, v2, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 29
    .line 30
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationResults()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lorg/wikipedia/donate/DonationResult;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object v0, v0, Lorg/wikipedia/donate/DonationResult;->dateTime:Ljava/lang/String;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-static {v0}, Lj$/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Lj$/time/LocalDateTime;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Lj$/time/LocalDateTime;->atZone(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v0}, Lj$/time/chrono/ChronoZonedDateTime;->toInstant()Lj$/time/Instant;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lj$/time/Instant;->getEpochSecond()J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    const-wide/16 v5, 0x3e8

    .line 67
    .line 68
    mul-long v7, v0, v5

    .line 69
    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 71
    .line 72
    .line 73
    move-result-wide v9

    .line 74
    const-wide/16 v11, 0x0

    .line 75
    .line 76
    invoke-static/range {v7 .. v12}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    move-object v0, v3

    .line 86
    :goto_0
    new-instance v1, Lorg/wikipedia/util/UiState$Success;

    .line 87
    .line 88
    invoke-direct {v1, v0}, Lorg/wikipedia/util/UiState$Success;-><init>(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel;->_donationUiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v3, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    new-instance v1, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadImpact$$inlined$CoroutineExceptionHandler$1;

    .line 104
    .line 105
    invoke-direct {v1, p0, v4}, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadImpact$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/activitytab/ActivityTabViewModel;I)V

    .line 106
    .line 107
    .line 108
    new-instance v2, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 109
    .line 110
    const/16 v5, 0x17

    .line 111
    .line 112
    invoke-direct {v2, v5, p0, v3}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v0, v1, v3, v2, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lorg/wikipedia/activitytab/ActivityTabViewModel;->loadImpact()V

    .line 119
    .line 120
    .line 121
    iget-object p0, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel;->currentTimelinePagingSource:Lorg/wikipedia/activitytab/timeline/TimelinePagingSource;

    .line 122
    .line 123
    if-eqz p0, :cond_2

    .line 124
    .line 125
    invoke-virtual {p0}, Landroidx/paging/PagingSource;->invalidate()V

    .line 126
    .line 127
    .line 128
    :cond_2
    :goto_1
    return-void
.end method

.method public final loadImpact()V
    .locals 4

    .line 1
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadImpact$$inlined$CoroutineExceptionHandler$1;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadImpact$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/activitytab/ActivityTabViewModel;I)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;-><init>(Lorg/wikipedia/activitytab/ActivityTabViewModel;Lkotlin/coroutines/Continuation;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x2

    .line 25
    invoke-static {v0, v1, v3, v2, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 26
    .line 27
    .line 28
    return-void
.end method
