.class public Lorg/schabi/newpipe/fragments/list/search/SearchFragment;
.super Lorg/schabi/newpipe/fragments/list/BaseListFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/schabi/newpipe/fragments/BackPressable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/fragments/list/BaseListFragment<",
        "Lorg/schabi/newpipe/extractor/search/SearchInfo;",
        "Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;",
        ">;",
        "Lorg/schabi/newpipe/fragments/BackPressable;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field contentFilter:[Ljava/lang/String;

.field public final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field filterItemCheckedId:I

.field public historyRecordManager:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

.field isCorrectedSearch:Z

.field lastSearchedString:Ljava/lang/String;

.field public final menuItemToFilterName:Landroidx/collection/SparseArrayCompat;

.field metaInfo:[Lorg/schabi/newpipe/extractor/MetaInfo;

.field public nextPage:Lorg/schabi/newpipe/extractor/Page;

.field public searchBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

.field public searchClear:Landroid/view/View;

.field public searchDisposable:Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

.field public searchEditText:Landroid/widget/EditText;

.field searchString:Ljava/lang/String;

.field searchSuggestion:Ljava/lang/String;

.field public searchToolbarContainer:Landroid/view/View;

.field public service:Lorg/schabi/newpipe/extractor/StreamingService;

.field protected serviceId:I

.field public showLocalSuggestions:Z

.field public showRemoteSuggestions:Z

.field sortFilter:Ljava/lang/String;

.field public suggestionDisposable:Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

.field public suggestionListAdapter:Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;

.field public final suggestionPublisher:Lio/reactivex/rxjava3/subjects/PublishSubject;

.field public suggestionsPanelVisible:Z

.field public textWatcher:Lcom/google/android/material/textfield/TextInputLayout$1;

.field wasSearchFocused:Z


# direct methods
.method public static synthetic $r8$lambda$-D5gL6hX0Mo6q1vU6pdkn6B4CkA(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda25;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda25;-><init>(Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static $r8$lambda$_nKY-_qzNUEIiNoFyBa7FXIRdwc(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/search/SearchExtractor$NothingFoundException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->clearStreamItemList()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->showEmptyState()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 15
    .line 16
    iget-object v3, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 17
    .line 18
    iget v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->getOpenInBrowserUrlForErrors()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->SEARCHED:Lorg/schabi/newpipe/error/UserAction;

    .line 29
    .line 30
    move-object v1, p1

    .line 31
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static synthetic $r8$lambda$db4fElYB_m1lMxbzJMRmVJWdzp4(Ljava/util/List;Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda25;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, p1, v1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda25;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static synthetic $r8$lambda$mmPjPW93nDks_6G8XnBg7Up1Kms(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    const/16 v1, 0x1d

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Ljava/util/List;

    .line 25
    .line 26
    return-object p0
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/reactivex/rxjava3/subjects/PublishSubject;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionPublisher:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->filterItemCheckedId:I

    .line 13
    .line 14
    iput v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    new-array v1, v0, [Ljava/lang/String;

    .line 18
    .line 19
    iput-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->contentFilter:[Ljava/lang/String;

    .line 20
    .line 21
    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->wasSearchFocused:Z

    .line 22
    .line 23
    new-instance v1, Landroidx/collection/SparseArrayCompat;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-direct {v1, v2}, Landroidx/collection/SparseArrayCompat;-><init>(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->menuItemToFilterName:Landroidx/collection/SparseArrayCompat;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    iput-boolean v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->showLocalSuggestions:Z

    .line 33
    .line 34
    iput-boolean v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->showRemoteSuggestions:Z

    .line 35
    .line 36
    new-instance v1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 42
    .line 43
    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionsPanelVisible:Z

    .line 44
    .line 45
    return-void
.end method

.method public static getInstance(ILjava/lang/String;)Lorg/schabi/newpipe/fragments/list/search/SearchFragment;
    .locals 2

    .line 1
    new-instance v0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    new-array v1, v1, [Ljava/lang/String;

    .line 8
    .line 9
    iput p0, v0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    .line 10
    .line 11
    iput-object p1, v0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v1, v0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->contentFilter:[Ljava/lang/String;

    .line 14
    .line 15
    const-string p0, ""

    .line 16
    .line 17
    iput-object p0, v0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->sortFilter:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    iget-object p0, v0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->wasLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final doInitialLoadLogic()V
    .locals 0

    .line 1
    return-void
.end method

.method public final getLocalSuggestionsObservable(ILjava/lang/String;)Lio/reactivex/rxjava3/internal/operators/observable/ObservableMap;
    .locals 4

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->historyRecordManager:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistDescriptionReadMore:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;

    .line 13
    .line 14
    const-string v1, "search_history"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 23
    .line 24
    filled-new-array {v1}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;

    .line 29
    .line 30
    const/4 v3, 0x3

    .line 31
    invoke-direct {v1, p2, p1, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;II)V

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v2, v0, v1}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 40
    .line 41
    filled-new-array {v1}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance p2, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 46
    .line 47
    const/16 v0, 0x1b

    .line 48
    .line 49
    invoke-direct {p2, v0}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v2, p1, p2}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    :goto_0
    new-instance p1, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;

    .line 57
    .line 58
    const/4 p2, 0x4

    .line 59
    invoke-direct {p1, p0, p2}, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;-><init>(Ljava/lang/Object;I)V

    .line 60
    .line 61
    .line 62
    new-instance p0, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;

    .line 63
    .line 64
    const/16 p2, 0x17

    .line 65
    .line 66
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 67
    .line 68
    .line 69
    new-instance p2, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMap;

    .line 70
    .line 71
    invoke-direct {p2, p1, p0, v2}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMap;-><init>(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;I)V

    .line 72
    .line 73
    .line 74
    return-object p2
.end method

.method public final getOpenInBrowserUrlForErrors()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getSearchQHFactory()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandlerFactory;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->contentFilter:[Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->sortFilter:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1, p0, v2}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->getUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    return-object p0

    .line 31
    :catch_0
    :goto_0
    const/4 p0, 0x0

    .line 32
    return-object p0
.end method

.method public final getSearchEditString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final handleError()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->handleError()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->hideSuggestionsPanel()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->hideKeyboardSearch()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final handleSearchSuggestion()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchSuggestion:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 10
    .line 11
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderNewpipeTitle:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 14
    .line 15
    const/16 v0, 0x8

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-boolean v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->isCorrectedSearch:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const v0, 0x7f13043e

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const v0, 0x7f130101

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v2, "<b><i>"

    .line 39
    .line 40
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchSuggestion:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v2}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, "</i></b>"

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const/4 v2, 0x1

    .line 62
    new-array v3, v2, [Ljava/lang/Object;

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    aput-object v1, v3, v4

    .line 66
    .line 67
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 72
    .line 73
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderNewpipeTitle:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v1, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 76
    .line 77
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 78
    .line 79
    const/16 v5, 0x18

    .line 80
    .line 81
    if-lt v3, v5, :cond_2

    .line 82
    .line 83
    invoke-static {v4, v0}, Lus/shandian/giga/util/Utility;->fromHtml(ILjava/lang/String;)Landroid/text/Spanned;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 96
    .line 97
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderNewpipeTitle:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v0, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 100
    .line 101
    new-instance v1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda7;

    .line 102
    .line 103
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 110
    .line 111
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderNewpipeTitle:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v0, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 114
    .line 115
    new-instance v1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda17;

    .line 116
    .line 117
    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda17;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 121
    .line 122
    .line 123
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 124
    .line 125
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderNewpipeTitle:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast p0, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 128
    .line 129
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public final hasMoreItems()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 2
    .line 3
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/Page;->isValid(Lorg/schabi/newpipe/extractor/Page;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final hideKeyboardSearch()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 29
    .line 30
    .line 31
    :cond_2
    :goto_0
    return-void
.end method

.method public final hideLoading()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->hideLoading()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->showListFooter(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final hideSuggestionsPanel()V
    .locals 9

    .line 1
    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionsPanelVisible:Z

    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 5
    .line 6
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderActionButton:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    check-cast v0, Landroid/widget/LinearLayout;

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    const/16 v8, 0x18

    .line 13
    .line 14
    const-wide/16 v2, 0xc8

    .line 15
    .line 16
    sget-object v4, Lorg/schabi/newpipe/ktx/AnimationType;->LIGHT_SLIDE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    .line 17
    .line 18
    const-wide/16 v5, 0x0

    .line 19
    .line 20
    invoke-static/range {v0 .. v8}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final initSuggestionObserver()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionDisposable:Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionPublisher:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 9
    .line 10
    const-wide/16 v1, 0x78

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/core/Observable;->debounce(J)Lio/reactivex/rxjava3/internal/operators/observable/ObservableDebounceTimed;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    const-string v1, ""

    .line 21
    .line 22
    :cond_1
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/observable/ObservableJust;

    .line 23
    .line 24
    invoke-direct {v2, v1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableJust;-><init>(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    new-array v3, v1, [Lio/reactivex/rxjava3/core/Observable;

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    aput-object v2, v3, v4

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    aput-object v0, v3, v2

    .line 35
    .line 36
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap;

    .line 37
    .line 38
    new-instance v4, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;

    .line 39
    .line 40
    const/4 v5, 0x3

    .line 41
    invoke-direct {v4, v3, v5}, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;-><init>(Ljava/lang/Object;I)V

    .line 42
    .line 43
    .line 44
    sget v3, Lio/reactivex/rxjava3/core/Flowable;->BUFFER_SIZE:I

    .line 45
    .line 46
    invoke-direct {v0, v4, v3, v2}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap;-><init>(Lio/reactivex/rxjava3/core/Observable;II)V

    .line 47
    .line 48
    .line 49
    new-instance v4, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda1;

    .line 50
    .line 51
    invoke-direct {v4, p0, v2}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;I)V

    .line 52
    .line 53
    .line 54
    const-string v6, "bufferSize"

    .line 55
    .line 56
    invoke-static {v3, v6}, Lio/reactivex/rxjava3/internal/functions/Functions;->verifyPositive(ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    instance-of v6, v0, Lio/reactivex/rxjava3/operators/ScalarSupplier;

    .line 60
    .line 61
    if-eqz v6, :cond_3

    .line 62
    .line 63
    check-cast v0, Lio/reactivex/rxjava3/operators/ScalarSupplier;

    .line 64
    .line 65
    invoke-interface {v0}, Lio/reactivex/rxjava3/functions/Supplier;->get()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-nez v0, :cond_2

    .line 70
    .line 71
    sget-object v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableEmpty;->INSTANCE:Lio/reactivex/rxjava3/internal/operators/observable/ObservableEmpty;

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap$ScalarXMapObservable;

    .line 75
    .line 76
    invoke-direct {v2, v0, v4}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap$ScalarXMapObservable;-><init>(Ljava/lang/Object;Lio/reactivex/rxjava3/functions/Function;)V

    .line 77
    .line 78
    .line 79
    move-object v0, v2

    .line 80
    goto :goto_0

    .line 81
    :cond_3
    new-instance v6, Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn;

    .line 82
    .line 83
    invoke-direct {v6, v0, v4, v3, v2}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn;-><init>(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;II)V

    .line 84
    .line 85
    .line 86
    move-object v0, v6

    .line 87
    :goto_0
    sget-object v2, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/observable/ObservableMap;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    new-instance v2, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda1;

    .line 102
    .line 103
    invoke-direct {v2, p0, v1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;I)V

    .line 104
    .line 105
    .line 106
    new-instance v1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda1;

    .line 107
    .line 108
    invoke-direct {v1, p0, v5}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;I)V

    .line 109
    .line 110
    .line 111
    new-instance v3, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

    .line 112
    .line 113
    invoke-direct {v3, v2, v1}, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    .line 117
    .line 118
    .line 119
    iput-object v3, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionDisposable:Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

    .line 120
    .line 121
    return-void
.end method

.method public final initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->initViews(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 5
    .line 6
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderServiceIcon:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionListAdapter:Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 16
    .line 17
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderServiceIcon:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 26
    .line 27
    new-instance p2, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$1;

    .line 28
    .line 29
    invoke-direct {p2, p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$1;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 36
    .line 37
    iget-object p2, p2, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderServiceIcon:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 45
    .line 46
    const p2, 0x7f0a0401

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchToolbarContainer:Landroid/view/View;

    .line 54
    .line 55
    const p2, 0x7f0a0402

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Landroid/widget/EditText;

    .line 63
    .line 64
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 65
    .line 66
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchToolbarContainer:Landroid/view/View;

    .line 67
    .line 68
    const p2, 0x7f0a03ff

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchClear:Landroid/view/View;

    .line 76
    .line 77
    return-void
.end method

.method public final loadMoreItems()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/Page;->isValid(Lorg/schabi/newpipe/extractor/Page;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->showListFooter(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchDisposable:Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    .line 27
    .line 28
    iget-object v3, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->contentFilter:[Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    iget-object v5, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->sortFilter:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v6, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 39
    .line 40
    invoke-static {v2}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkServiceId(I)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda10;

    .line 44
    .line 45
    invoke-direct/range {v1 .. v6}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda10;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 49
    .line 50
    const/4 v2, 0x3

    .line 51
    invoke-direct {v0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 52
    .line 53
    .line 54
    sget-object v1, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;

    .line 65
    .line 66
    const/4 v3, 0x0

    .line 67
    invoke-direct {v2, v0, v1, v3}, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/core/Scheduler;I)V

    .line 68
    .line 69
    .line 70
    new-instance v0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda1;

    .line 71
    .line 72
    const/16 v1, 0xb

    .line 73
    .line 74
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;I)V

    .line 75
    .line 76
    .line 77
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent;

    .line 78
    .line 79
    invoke-direct {v1, v2, v0, v3}, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent;-><init>(Lio/reactivex/rxjava3/core/Single;Ljava/lang/Object;I)V

    .line 80
    .line 81
    .line 82
    new-instance v0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda1;

    .line 83
    .line 84
    const/4 v2, 0x4

    .line 85
    invoke-direct {v0, p0, v2}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;I)V

    .line 86
    .line 87
    .line 88
    new-instance v2, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda1;

    .line 89
    .line 90
    const/16 v3, 0xa

    .line 91
    .line 92
    invoke-direct {v2, p0, v3}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;I)V

    .line 93
    .line 94
    .line 95
    new-instance v3, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 96
    .line 97
    invoke-direct {v3, v0, v2}, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    .line 101
    .line 102
    .line 103
    iput-object v3, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchDisposable:Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 104
    .line 105
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    const/16 p3, 0xa

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    if-ne p1, p3, :cond_1

    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    if-ne p2, p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->search(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-string p0, "ReCaptcha failed"

    .line 25
    .line 26
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string p2, "Request code from activity not supported ["

    .line 33
    .line 34
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, "]"

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 5
    .line 6
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 11
    .line 12
    const v2, 0x7f1304ae

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v5, 0x1

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    move v1, v5

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const v6, 0x7f13049e

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    :goto_0
    iput-boolean v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->showLocalSuggestions:Z

    .line 41
    .line 42
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    move v0, v5

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const v2, 0x7f1304ad

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    :goto_1
    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->showRemoteSuggestions:Z

    .line 68
    .line 69
    new-instance v0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;

    .line 70
    .line 71
    new-instance v1, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$PeertubeInstanceCallback;

    .line 72
    .line 73
    invoke-direct {v1, v5}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$PeertubeInstanceCallback;-><init>(I)V

    .line 74
    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil;I)V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionListAdapter:Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;

    .line 81
    .line 82
    new-instance v0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 83
    .line 84
    invoke-direct {v0, p1}, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;-><init>(Landroid/content/Context;)V

    .line 85
    .line 86
    .line 87
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->historyRecordManager:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 88
    .line 89
    return-void
.end method

.method public final onBackPressed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionsPanelVisible:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    .line 6
    .line 7
    iget-object v0, v0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemList:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->hideSuggestionsPanel()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->hideKeyboardSearch()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 30
    .line 31
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->lastSearchedString:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    return p0

    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 13

    .line 1
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 5
    .line 6
    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lokio/Options$Companion;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Lokio/Options$Companion;->setDisplayShowTitleEnabled(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v1}, Lokio/Options$Companion;->setDisplayHomeAsUpEnabled(Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    iget-object v2, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    const-string v3, "onCreateOptionsMenu() called with null service"

    .line 31
    .line 32
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->updateService()V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 39
    .line 40
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/StreamingService;->getSearchQHFactory()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandlerFactory;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->getAvailableContentFilter()[Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    array-length v3, v2

    .line 49
    move v4, v0

    .line 50
    move v5, v4

    .line 51
    move v6, v1

    .line 52
    :goto_0
    if-ge v4, v3, :cond_10

    .line 53
    .line 54
    aget-object v7, v2, v4

    .line 55
    .line 56
    const-string v8, "music_songs"

    .line 57
    .line 58
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    const-string v10, "sepia_videos"

    .line 63
    .line 64
    const/4 v11, 0x2

    .line 65
    if-eqz v9, :cond_2

    .line 66
    .line 67
    add-int/lit8 v9, v5, 0x1

    .line 68
    .line 69
    const-string v12, "YouTube Music"

    .line 70
    .line 71
    invoke-interface {p1, v11, v5, v0, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 76
    .line 77
    .line 78
    :goto_1
    move v5, v9

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    if-eqz v9, :cond_3

    .line 85
    .line 86
    add-int/lit8 v9, v5, 0x1

    .line 87
    .line 88
    const-string v12, "Sepia Search"

    .line 89
    .line 90
    invoke-interface {p1, v11, v5, v0, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    :goto_2
    iget-object v9, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->menuItemToFilterName:Landroidx/collection/SparseArrayCompat;

    .line 99
    .line 100
    invoke-virtual {v9, v5, v7}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    add-int/lit8 v9, v5, 0x1

    .line 104
    .line 105
    sget-object v11, Lorg/schabi/newpipe/util/ServiceHelper;->DEFAULT_FALLBACK_SERVICE:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    .line 106
    .line 107
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 111
    .line 112
    .line 113
    move-result v11

    .line 114
    sparse-switch v11, :sswitch_data_0

    .line 115
    .line 116
    .line 117
    goto/16 :goto_3

    .line 118
    .line 119
    :sswitch_0
    const-string v8, "music_videos"

    .line 120
    .line 121
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    if-nez v8, :cond_d

    .line 126
    .line 127
    goto/16 :goto_3

    .line 128
    .line 129
    :sswitch_1
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    if-nez v8, :cond_4

    .line 134
    .line 135
    goto/16 :goto_3

    .line 136
    .line 137
    :cond_4
    const v7, 0x7f1304b9

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    goto/16 :goto_3

    .line 148
    .line 149
    :sswitch_2
    const-string v8, "music_albums"

    .line 150
    .line 151
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v8

    .line 155
    if-nez v8, :cond_5

    .line 156
    .line 157
    goto/16 :goto_3

    .line 158
    .line 159
    :cond_5
    const v7, 0x7f130022

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    goto/16 :goto_3

    .line 170
    .line 171
    :sswitch_3
    const-string v8, "channels"

    .line 172
    .line 173
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v8

    .line 177
    if-nez v8, :cond_6

    .line 178
    .line 179
    goto/16 :goto_3

    .line 180
    .line 181
    :cond_6
    const v7, 0x7f13008b

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    goto/16 :goto_3

    .line 192
    .line 193
    :sswitch_4
    const-string v8, "conferences"

    .line 194
    .line 195
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v8

    .line 199
    if-nez v8, :cond_7

    .line 200
    .line 201
    goto/16 :goto_3

    .line 202
    .line 203
    :cond_7
    const v7, 0x7f1300b2

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    goto/16 :goto_3

    .line 214
    .line 215
    :sswitch_5
    const-string/jumbo v8, "users"

    .line 216
    .line 217
    .line 218
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v8

    .line 222
    if-nez v8, :cond_8

    .line 223
    .line 224
    goto/16 :goto_3

    .line 225
    .line 226
    :cond_8
    const v7, 0x7f130529

    .line 227
    .line 228
    .line 229
    invoke-virtual {p2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v7

    .line 233
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    goto/16 :goto_3

    .line 237
    .line 238
    :sswitch_6
    const-string v8, "all"

    .line 239
    .line 240
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v8

    .line 244
    if-nez v8, :cond_9

    .line 245
    .line 246
    goto/16 :goto_3

    .line 247
    .line 248
    :cond_9
    const v7, 0x7f130023

    .line 249
    .line 250
    .line 251
    invoke-virtual {p2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v7

    .line 255
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    goto/16 :goto_3

    .line 259
    .line 260
    :sswitch_7
    const-string v8, "music_artists"

    .line 261
    .line 262
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v8

    .line 266
    if-nez v8, :cond_a

    .line 267
    .line 268
    goto/16 :goto_3

    .line 269
    .line 270
    :cond_a
    const v7, 0x7f130043

    .line 271
    .line 272
    .line 273
    invoke-virtual {p2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v7

    .line 277
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    goto :goto_3

    .line 281
    :sswitch_8
    const-string/jumbo v8, "videos"

    .line 282
    .line 283
    .line 284
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v8

    .line 288
    if-nez v8, :cond_d

    .line 289
    .line 290
    goto :goto_3

    .line 291
    :sswitch_9
    const-string/jumbo v8, "tracks"

    .line 292
    .line 293
    .line 294
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v8

    .line 298
    if-nez v8, :cond_b

    .line 299
    .line 300
    goto :goto_3

    .line 301
    :cond_b
    const v7, 0x7f130504

    .line 302
    .line 303
    .line 304
    invoke-virtual {p2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v7

    .line 308
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    goto :goto_3

    .line 312
    :sswitch_a
    const-string v8, "events"

    .line 313
    .line 314
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v8

    .line 318
    if-nez v8, :cond_c

    .line 319
    .line 320
    goto :goto_3

    .line 321
    :cond_c
    const v7, 0x7f130171

    .line 322
    .line 323
    .line 324
    invoke-virtual {p2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v7

    .line 328
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    .line 330
    .line 331
    goto :goto_3

    .line 332
    :sswitch_b
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v8

    .line 336
    if-nez v8, :cond_d

    .line 337
    .line 338
    goto :goto_3

    .line 339
    :cond_d
    const v7, 0x7f130535

    .line 340
    .line 341
    .line 342
    invoke-virtual {p2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v7

    .line 346
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    .line 348
    .line 349
    goto :goto_3

    .line 350
    :sswitch_c
    const-string v8, "music_playlists"

    .line 351
    .line 352
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v8

    .line 356
    if-nez v8, :cond_e

    .line 357
    .line 358
    goto :goto_3

    .line 359
    :sswitch_d
    const-string v8, "playlists"

    .line 360
    .line 361
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result v8

    .line 365
    if-nez v8, :cond_e

    .line 366
    .line 367
    goto :goto_3

    .line 368
    :cond_e
    const v7, 0x7f1303df

    .line 369
    .line 370
    .line 371
    invoke-virtual {p2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v7

    .line 375
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    .line 377
    .line 378
    :goto_3
    invoke-interface {p1, v1, v5, v0, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 379
    .line 380
    .line 381
    move-result-object v5

    .line 382
    if-eqz v6, :cond_f

    .line 383
    .line 384
    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 385
    .line 386
    .line 387
    move v6, v0

    .line 388
    :cond_f
    add-int/lit8 v4, v4, 0x1

    .line 389
    .line 390
    move v5, v9

    .line 391
    goto/16 :goto_0

    .line 392
    .line 393
    :cond_10
    invoke-interface {p1, v1, v1, v1}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    .line 394
    .line 395
    .line 396
    iget p0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->filterItemCheckedId:I

    .line 397
    .line 398
    const/4 p2, -0x1

    .line 399
    if-eq p0, p2, :cond_12

    .line 400
    .line 401
    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 402
    .line 403
    .line 404
    move-result-object p0

    .line 405
    if-nez p0, :cond_11

    .line 406
    .line 407
    goto :goto_4

    .line 408
    :cond_11
    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 409
    .line 410
    .line 411
    :cond_12
    :goto_4
    return-void

    .line 412
    nop

    .line 413
    :sswitch_data_0
    .sparse-switch
        -0x6f36471f -> :sswitch_d
        -0x6a0208b9 -> :sswitch_c
        -0x4fb0b23f -> :sswitch_b
        -0x4cf81ee7 -> :sswitch_a
        -0x3399c778 -> :sswitch_9
        -0x30ad84a8 -> :sswitch_8
        -0x21ca560e -> :sswitch_7
        0x179a1 -> :sswitch_6
        0x6a68e08 -> :sswitch_5
        0x40895ed7 -> :sswitch_4
        0x556423d0 -> :sswitch_3
        0x59631b3e -> :sswitch_2
        0x5eb80f64 -> :sswitch_1
        0x7d0f46b2 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    const p0, 0x7f0d0063

    .line 2
    .line 3
    .line 4
    const/4 p3, 0x0

    .line 5
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchDisposable:Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionDisposable:Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 19
    .line 20
    invoke-virtual {p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onDestroyView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchClear:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchClear:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->textWatcher:Lcom/google/android/material/textfield/TextInputLayout$1;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iput-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->textWatcher:Lcom/google/android/material/textfield/TextInputLayout$1;

    .line 37
    .line 38
    iput-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 39
    .line 40
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onDestroyView()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final onItemSelected()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->hideKeyboardSearch()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->menuItemToFilterName:Landroidx/collection/SparseArrayCompat;

    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iput v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->filterItemCheckedId:I

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    const-string v2, "all"

    .line 39
    .line 40
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 52
    .line 53
    iget-object v4, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 54
    .line 55
    iget-object v4, v4, Lorg/schabi/newpipe/extractor/StreamingService;->serviceInfo:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    .line 56
    .line 57
    iget-object v4, v4, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->name:Ljava/lang/String;

    .line 58
    .line 59
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const/4 v5, 0x2

    .line 64
    new-array v5, v5, [Ljava/lang/Object;

    .line 65
    .line 66
    aput-object v4, v5, v3

    .line 67
    .line 68
    aput-object p1, v5, v1

    .line 69
    .line 70
    const p1, 0x7f130440

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 82
    .line 83
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 84
    .line 85
    iget-object v2, v2, Lorg/schabi/newpipe/extractor/StreamingService;->serviceInfo:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    .line 86
    .line 87
    iget-object v2, v2, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->name:Ljava/lang/String;

    .line 88
    .line 89
    new-array v4, v1, [Ljava/lang/Object;

    .line 90
    .line 91
    aput-object v2, v4, v3

    .line 92
    .line 93
    const v2, 0x7f13043f

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v2, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    :goto_1
    new-array p1, v3, [Ljava/lang/String;

    .line 104
    .line 105
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, [Ljava/lang/String;

    .line 110
    .line 111
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->contentFilter:[Ljava/lang/String;

    .line 112
    .line 113
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_3

    .line 120
    .line 121
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->search(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_3
    return v1
.end method

.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->wasSearchFocused:Z

    .line 11
    .line 12
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchDisposable:Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionDisposable:Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 27
    .line 28
    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->hideKeyboardSearch()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final onResume()V
    .locals 12

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionDisposable:Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;->isDisposed()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->initSuggestionObserver()V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    if-nez v0, :cond_4

    .line 25
    .line 26
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->wasLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->search(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    .line 41
    .line 42
    iget-object v0, v0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemList:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->savedState:Lorg/schabi/newpipe/util/SavedState;

    .line 51
    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->search(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_3
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_4

    .line 67
    .line 68
    iget-boolean v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->wasSearchFocused:Z

    .line 69
    .line 70
    if-nez v0, :cond_4

    .line 71
    .line 72
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->lastPanelError:Lorg/schabi/newpipe/error/ErrorInfo;

    .line 73
    .line 74
    if-nez v0, :cond_4

    .line 75
    .line 76
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    .line 77
    .line 78
    invoke-virtual {v0}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->clearStreamItemList()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->showEmptyState()V

    .line 82
    .line 83
    .line 84
    :cond_4
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->handleSearchSuggestion()V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->metaInfo:[Lorg/schabi/newpipe/extractor/MetaInfo;

    .line 88
    .line 89
    if-nez v0, :cond_5

    .line 90
    .line 91
    const/4 v0, 0x0

    .line 92
    goto :goto_0

    .line 93
    :cond_5
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    :goto_0
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 98
    .line 99
    iget-object v3, v2, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderServiceView:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v3, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 102
    .line 103
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerArrow:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v2, Landroid/view/View;

    .line 106
    .line 107
    iget-object v4, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 108
    .line 109
    invoke-static {v0, v3, v2, v4}, Lorg/schabi/newpipe/util/ExtractorHelper;->showMetaInfoInTextView(Ljava/util/List;Landroid/widget/TextView;Landroid/view/View;Lio/reactivex/rxjava3/disposables/CompositeDisposable;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-nez v0, :cond_7

    .line 119
    .line 120
    iget-boolean v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->wasSearchFocused:Z

    .line 121
    .line 122
    if-eqz v0, :cond_6

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_6
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->hideKeyboardSearch()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->hideSuggestionsPanel()V

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_7
    :goto_1
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 133
    .line 134
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 135
    .line 136
    invoke-static {v0, v2}, Lorg/jsoup/Jsoup;->showKeyboard(Landroid/app/Activity;Landroid/widget/EditText;)V

    .line 137
    .line 138
    .line 139
    const/4 v4, 0x1

    .line 140
    iput-boolean v4, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionsPanelVisible:Z

    .line 141
    .line 142
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 143
    .line 144
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderActionButton:Ljava/lang/Object;

    .line 145
    .line 146
    move-object v3, v0

    .line 147
    check-cast v3, Landroid/widget/LinearLayout;

    .line 148
    .line 149
    const/4 v10, 0x0

    .line 150
    const/16 v11, 0x18

    .line 151
    .line 152
    const-wide/16 v5, 0xc8

    .line 153
    .line 154
    sget-object v7, Lorg/schabi/newpipe/ktx/AnimationType;->LIGHT_SLIDE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    .line 155
    .line 156
    const-wide/16 v8, 0x0

    .line 157
    .line 158
    invoke-static/range {v3 .. v11}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 159
    .line 160
    .line 161
    :goto_2
    iput-boolean v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->wasSearchFocused:Z

    .line 162
    .line 163
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->getSearchEditString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 15
    .line 16
    :goto_0
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 17
    .line 18
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->updateService()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    .line 1
    const v0, 0x7f0a00d8

    .line 2
    .line 3
    .line 4
    invoke-static {v0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    move-object v4, v1

    .line 9
    check-cast v4, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 10
    .line 11
    if-eqz v4, :cond_6

    .line 12
    .line 13
    const v0, 0x7f0a0144

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/widget/LinearLayout;

    .line 21
    .line 22
    if-eqz v1, :cond_6

    .line 23
    .line 24
    const v0, 0x7f0a015b

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_6

    .line 32
    .line 33
    invoke-static {v1}, Lorg/schabi/newpipe/databinding/ErrorPanelBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ErrorPanelBinding;

    .line 34
    .line 35
    .line 36
    const v0, 0x7f0a0206

    .line 37
    .line 38
    .line 39
    invoke-static {v0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    .line 45
    if-eqz v1, :cond_6

    .line 46
    .line 47
    const v0, 0x7f0a0218

    .line 48
    .line 49
    .line 50
    invoke-static {v0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Landroid/widget/ProgressBar;

    .line 55
    .line 56
    if-eqz v1, :cond_6

    .line 57
    .line 58
    const v0, 0x7f0a0352

    .line 59
    .line 60
    .line 61
    invoke-static {v0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    if-eqz v5, :cond_6

    .line 66
    .line 67
    const v0, 0x7f0a0353

    .line 68
    .line 69
    .line 70
    invoke-static {v0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    move-object v6, v1

    .line 75
    check-cast v6, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 76
    .line 77
    if-eqz v6, :cond_6

    .line 78
    .line 79
    const v0, 0x7f0a03b4

    .line 80
    .line 81
    .line 82
    invoke-static {v0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    move-object v7, v1

    .line 87
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    .line 88
    .line 89
    if-eqz v7, :cond_6

    .line 90
    .line 91
    const v0, 0x7f0a03b5

    .line 92
    .line 93
    .line 94
    invoke-static {v0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    move-object v8, v1

    .line 99
    check-cast v8, Landroid/widget/LinearLayout;

    .line 100
    .line 101
    if-eqz v8, :cond_6

    .line 102
    .line 103
    new-instance v2, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 104
    .line 105
    move-object v3, p1

    .line 106
    check-cast v3, Landroid/widget/RelativeLayout;

    .line 107
    .line 108
    invoke-direct/range {v2 .. v8}, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;-><init>(Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/view/View;Lorg/schabi/newpipe/views/NewPipeTextView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;)V

    .line 109
    .line 110
    .line 111
    iput-object v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 112
    .line 113
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->updateService()V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 120
    .line 121
    const/4 p2, 0x0

    .line 122
    if-eqz p1, :cond_0

    .line 123
    .line 124
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 125
    .line 126
    iget-object p1, p1, Lorg/schabi/newpipe/extractor/StreamingService;->serviceInfo:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    .line 127
    .line 128
    iget-object p1, p1, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->name:Ljava/lang/String;

    .line 129
    .line 130
    const/4 v1, 0x1

    .line 131
    new-array v1, v1, [Ljava/lang/Object;

    .line 132
    .line 133
    aput-object p1, v1, p2

    .line 134
    .line 135
    const p1, 0x7f13043f

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 143
    .line 144
    .line 145
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 146
    .line 147
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 153
    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    const/high16 v0, 0x3f800000    # 1.0f

    .line 159
    .line 160
    const/4 v1, 0x0

    .line 161
    if-nez p1, :cond_2

    .line 162
    .line 163
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->getSearchEditString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isBlank(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-eqz p1, :cond_1

    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchToolbarContainer:Landroid/view/View;

    .line 175
    .line 176
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchToolbarContainer:Landroid/view/View;

    .line 180
    .line 181
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchToolbarContainer:Landroid/view/View;

    .line 185
    .line 186
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchToolbarContainer:Landroid/view/View;

    .line 191
    .line 192
    const/high16 v2, 0x42c80000    # 100.0f

    .line 193
    .line 194
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 195
    .line 196
    .line 197
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchToolbarContainer:Landroid/view/View;

    .line 198
    .line 199
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 200
    .line 201
    .line 202
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchToolbarContainer:Landroid/view/View;

    .line 203
    .line 204
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 205
    .line 206
    .line 207
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchToolbarContainer:Landroid/view/View;

    .line 208
    .line 209
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    const-wide/16 v0, 0xc8

    .line 222
    .line 223
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 228
    .line 229
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 237
    .line 238
    .line 239
    :goto_1
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchClear:Landroid/view/View;

    .line 240
    .line 241
    new-instance v0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda7;

    .line 242
    .line 243
    invoke-direct {v0, p0, p2}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    .line 248
    .line 249
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchClear:Landroid/view/View;

    .line 250
    .line 251
    const p2, 0x7f13009a

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    invoke-static {p1, p2}, Landroidx/work/OperationKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 259
    .line 260
    .line 261
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 262
    .line 263
    new-instance p2, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda7;

    .line 264
    .line 265
    const/4 v0, 0x2

    .line 266
    invoke-direct {p2, p0, v0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;I)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    .line 271
    .line 272
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 273
    .line 274
    new-instance p2, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda9;

    .line 275
    .line 276
    invoke-direct {p2, p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 280
    .line 281
    .line 282
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionListAdapter:Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;

    .line 283
    .line 284
    new-instance p2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 285
    .line 286
    invoke-direct {p2, p0, v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;-><init>(Ljava/lang/Object;I)V

    .line 287
    .line 288
    .line 289
    iput-object p2, p1, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;->listener:Ljava/lang/Object;

    .line 290
    .line 291
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->textWatcher:Lcom/google/android/material/textfield/TextInputLayout$1;

    .line 292
    .line 293
    if-eqz p1, :cond_3

    .line 294
    .line 295
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 296
    .line 297
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 298
    .line 299
    .line 300
    :cond_3
    new-instance p1, Lcom/google/android/material/textfield/TextInputLayout$1;

    .line 301
    .line 302
    const/4 p2, 0x3

    .line 303
    invoke-direct {p1, p0, p2}, Lcom/google/android/material/textfield/TextInputLayout$1;-><init>(Ljava/lang/Object;I)V

    .line 304
    .line 305
    .line 306
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->textWatcher:Lcom/google/android/material/textfield/TextInputLayout$1;

    .line 307
    .line 308
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 309
    .line 310
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 311
    .line 312
    .line 313
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 314
    .line 315
    new-instance p2, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda10;

    .line 316
    .line 317
    invoke-direct {p2, p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda10;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 321
    .line 322
    .line 323
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionDisposable:Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

    .line 324
    .line 325
    if-eqz p1, :cond_5

    .line 326
    .line 327
    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;->isDisposed()Z

    .line 328
    .line 329
    .line 330
    move-result p1

    .line 331
    if-eqz p1, :cond_4

    .line 332
    .line 333
    goto :goto_2

    .line 334
    :cond_4
    return-void

    .line 335
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->initSuggestionObserver()V

    .line 336
    .line 337
    .line 338
    return-void

    .line 339
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 340
    .line 341
    .line 342
    move-result-object p0

    .line 343
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object p0

    .line 347
    const-string p1, "Missing required view with ID: "

    .line 348
    .line 349
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object p0

    .line 353
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    return-void
.end method

.method public final readFrom(Ljava/util/Queue;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->readFrom(Ljava/util/Queue;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lorg/schabi/newpipe/extractor/Page;

    .line 9
    .line 10
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 11
    .line 12
    return-void
.end method

.method public final reloadContent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->getSearchEditString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isBlank(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const-string v1, ""

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 34
    .line 35
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 36
    .line 37
    invoke-static {v0, v1}, Lorg/jsoup/Jsoup;->showKeyboard(Landroid/app/Activity;Landroid/widget/EditText;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->hideErrorPanel()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->getSearchEditString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :goto_1
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->search(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final search(Ljava/lang/String;)V
    .locals 10

    .line 1
    sget-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_ACTION:Landroidx/transition/Transition$1;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    invoke-static {p1}, Lus/shandian/giga/util/Utility;->getServiceByUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->showLoading()V

    .line 17
    .line 18
    .line 19
    new-instance v3, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    invoke-direct {v3, v4, p0, v2, p1}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromCallable;

    .line 26
    .line 27
    invoke-direct {v2, v3}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromCallable;-><init>(Ljava/util/concurrent/Callable;)V

    .line 28
    .line 29
    .line 30
    sget-object v3, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/observable/ObservableMap;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    new-instance v3, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda1;

    .line 45
    .line 46
    const/4 v4, 0x6

    .line 47
    invoke-direct {v3, p0, v4}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;I)V

    .line 48
    .line 49
    .line 50
    new-instance v4, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda1;

    .line 51
    .line 52
    const/4 v5, 0x7

    .line 53
    invoke-direct {v4, p0, v5}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;I)V

    .line 54
    .line 55
    .line 56
    new-instance v5, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

    .line 57
    .line 58
    invoke-direct {v5, v3, v4}, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v5}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v5}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :catch_0
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 69
    .line 70
    iput-object v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->lastSearchedString:Ljava/lang/String;

    .line 71
    .line 72
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    .line 75
    .line 76
    invoke-virtual {v2}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->clearStreamItemList()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->hideSuggestionsPanel()V

    .line 80
    .line 81
    .line 82
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 83
    .line 84
    iget-object v3, v2, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderServiceView:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v3, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 87
    .line 88
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerArrow:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v2, Landroid/view/View;

    .line 91
    .line 92
    const/4 v4, 0x0

    .line 93
    invoke-static {v4, v3, v2, v1}, Lorg/schabi/newpipe/util/ExtractorHelper;->showMetaInfoInTextView(Ljava/util/List;Landroid/widget/TextView;Landroid/view/View;Lio/reactivex/rxjava3/disposables/CompositeDisposable;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->hideKeyboardSearch()V

    .line 97
    .line 98
    .line 99
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->historyRecordManager:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 100
    .line 101
    iget v5, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    .line 102
    .line 103
    iget-object v3, v2, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistTitleView:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v3, Landroid/content/SharedPreferences;

    .line 106
    .line 107
    iget-object v4, v2, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderName:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v4, Ljava/lang/String;

    .line 110
    .line 111
    const/4 v9, 0x0

    .line 112
    invoke-interface {v3, v4, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-nez v3, :cond_1

    .line 117
    .line 118
    sget-object v2, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeEmpty;->INSTANCE:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeEmpty;

    .line 119
    .line 120
    move-object v6, p1

    .line 121
    goto :goto_0

    .line 122
    :cond_1
    sget-object v3, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    .line 123
    .line 124
    invoke-static {v3}, Lj$/time/OffsetDateTime;->now(Lj$/time/ZoneId;)Lj$/time/OffsetDateTime;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    new-instance v3, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;

    .line 129
    .line 130
    const-wide/16 v7, 0x0

    .line 131
    .line 132
    move-object v6, p1

    .line 133
    invoke-direct/range {v3 .. v8}, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;-><init>(Lj$/time/OffsetDateTime;ILjava/lang/String;J)V

    .line 134
    .line 135
    .line 136
    new-instance p1, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda0;

    .line 137
    .line 138
    invoke-direct {p1, v2, v3, v4, v9}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;Lj$/time/OffsetDateTime;I)V

    .line 139
    .line 140
    .line 141
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFromCallable;

    .line 142
    .line 143
    invoke-direct {v2, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFromCallable;-><init>(Ljava/util/concurrent/Callable;)V

    .line 144
    .line 145
    .line 146
    sget-object p1, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 147
    .line 148
    invoke-virtual {v2, p1}, Lio/reactivex/rxjava3/core/Maybe;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    :goto_0
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    new-instance v3, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;

    .line 157
    .line 158
    const/16 v4, 0x15

    .line 159
    .line 160
    invoke-direct {v3, v4}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 161
    .line 162
    .line 163
    new-instance v4, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda15;

    .line 164
    .line 165
    invoke-direct {v4, p0, v6}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda15;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    new-instance v5, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;

    .line 169
    .line 170
    invoke-direct {v5, v3, v4, v0}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)V

    .line 171
    .line 172
    .line 173
    :try_start_1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;

    .line 174
    .line 175
    invoke-direct {v0, v5, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;-><init>(Lio/reactivex/rxjava3/core/MaybeObserver;Lio/reactivex/rxjava3/core/Scheduler;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v0}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/core/MaybeObserver;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v5}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionPublisher:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 185
    .line 186
    invoke-virtual {p1, v6}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v9}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->startLoading(Z)V

    .line 190
    .line 191
    .line 192
    return-void

    .line 193
    :catchall_0
    move-exception v0

    .line 194
    move-object p0, v0

    .line 195
    const-string/jumbo p1, "subscribeActual failed"

    .line 196
    .line 197
    .line 198
    invoke-static {p0, p1, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    throw p0

    .line 203
    :catch_1
    move-exception v0

    .line 204
    move-object p0, v0

    .line 205
    throw p0
.end method

.method public final startLoading(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->startLoading(Z)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 5
    .line 6
    invoke-virtual {p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchDisposable:Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    .line 17
    .line 18
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->contentFilter:[Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->sortFilter:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p1}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkServiceId(I)V

    .line 29
    .line 30
    .line 31
    new-instance v3, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda2;

    .line 32
    .line 33
    invoke-direct {v3, p1, v0, v1, v2}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda2;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 37
    .line 38
    const/4 v0, 0x3

    .line 39
    invoke-direct {p1, v3, v0}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    sget-object v0, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-direct {v1, p1, v0, v2}, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/core/Scheduler;I)V

    .line 56
    .line 57
    .line 58
    new-instance p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda1;

    .line 59
    .line 60
    const/4 v0, 0x5

    .line 61
    invoke-direct {p1, p0, v0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;I)V

    .line 62
    .line 63
    .line 64
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent;

    .line 65
    .line 66
    invoke-direct {v0, v1, p1, v2}, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnEvent;-><init>(Lio/reactivex/rxjava3/core/Single;Ljava/lang/Object;I)V

    .line 67
    .line 68
    .line 69
    new-instance p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda1;

    .line 70
    .line 71
    invoke-direct {p1, p0, v2}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;I)V

    .line 72
    .line 73
    .line 74
    new-instance v1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda1;

    .line 75
    .line 76
    const/16 v2, 0xa

    .line 77
    .line 78
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;I)V

    .line 79
    .line 80
    .line 81
    new-instance v2, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 82
    .line 83
    invoke-direct {v2, p1, v1}, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    .line 87
    .line 88
    .line 89
    iput-object v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchDisposable:Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 90
    .line 91
    return-void
.end method

.method public final updateService()V
    .locals 3

    .line 1
    :try_start_0
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    .line 2
    .line 3
    invoke-static {v0}, Lus/shandian/giga/util/Utility;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->service:Lorg/schabi/newpipe/extractor/StreamingService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    return-void

    .line 10
    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "Getting service for id "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {p0, v1, v0}, Lorg/schabi/newpipe/error/ErrorUtil;->showUiErrorSnackbar(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final writeTo(Ljava/util/LinkedList;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->writeTo(Ljava/util/LinkedList;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method
