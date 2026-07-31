.class public final Lorg/schabi/newpipe/local/feed/FeedFragment;
.super Lorg/schabi/newpipe/fragments/BaseStateFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/fragments/BaseStateFragment<",
        "Lorg/schabi/newpipe/local/feed/FeedState;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/local/feed/FeedFragment$Companion;


# instance fields
.field public _feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

.field public final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field public groupAdapter:Lcom/xwray/groupie/GroupieAdapter;

.field public groupId:J

.field public groupName:Ljava/lang/String;

.field public isRefreshing:Z

.field public lastNewItemsCount:I

.field public listState:Landroid/os/Parcelable;

.field public final listenerStreamItem:Lorg/schabi/newpipe/local/feed/FeedFragment$listenerStreamItem$1;

.field public oldestSubscriptionUpdate:Lj$/time/OffsetDateTime;

.field public onSettingsChangeListener:Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda6;

.field public updateListViewModeOnResume:Z

.field public viewModel:Lorg/schabi/newpipe/local/feed/FeedViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedFragment$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/local/feed/FeedFragment;->Companion:Lorg/schabi/newpipe/local/feed/FeedFragment$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 10
    .line 11
    const-wide/16 v0, -0x1

    .line 12
    .line 13
    iput-wide v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupId:J

    .line 14
    .line 15
    const-string v0, ""

    .line 16
    .line 17
    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupName:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedFragment$listenerStreamItem$1;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/feed/FeedFragment$listenerStreamItem$1;-><init>(Lorg/schabi/newpipe/local/feed/FeedFragment;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->listenerStreamItem:Lorg/schabi/newpipe/local/feed/FeedFragment$listenerStreamItem$1;

    .line 29
    .line 30
    return-void
.end method

.method public static final newInstance(Ljava/lang/String;J)Lorg/schabi/newpipe/local/feed/FeedFragment;
    .locals 2

    .line 1
    sget-object v0, Lorg/schabi/newpipe/local/feed/FeedFragment;->Companion:Lorg/schabi/newpipe/local/feed/FeedFragment$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedFragment;

    .line 7
    .line 8
    invoke-direct {v0}, Lorg/schabi/newpipe/local/feed/FeedFragment;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance p2, Lkotlin/Pair;

    .line 16
    .line 17
    const-string v1, "ARG_GROUP_ID"

    .line 18
    .line 19
    invoke-direct {p2, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Lkotlin/Pair;

    .line 23
    .line 24
    const-string v1, "ARG_GROUP_NAME"

    .line 25
    .line 26
    invoke-direct {p1, v1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x2

    .line 30
    new-array p0, p0, [Lkotlin/Pair;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    aput-object p2, p0, v1

    .line 34
    .line 35
    const/4 p2, 0x1

    .line 36
    aput-object p1, p0, p2

    .line 37
    .line 38
    invoke-static {p0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 43
    .line 44
    .line 45
    return-object v0
.end method


# virtual methods
.method public final doInitialLoadLogic()V
    .locals 0

    .line 1
    return-void
.end method

.method public final handleError()V
    .locals 10

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->handleError()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    invoke-static {v0}, Lnet/newpipe/app/AppKt;->animateHideRecyclerViewAllowingScrolling(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->refreshRootView:Landroid/widget/RelativeLayout;

    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    const/16 v9, 0x1c

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const-wide/16 v3, 0x0

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    const-wide/16 v6, 0x0

    .line 29
    .line 30
    invoke-static/range {v1 .. v9}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->loadingProgressText:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 39
    .line 40
    invoke-static/range {v1 .. v9}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 52
    .line 53
    .line 54
    iput-boolean v1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->isRefreshing:Z

    .line 55
    .line 56
    return-void
.end method

.method public final handleItemsErrors(Ljava/util/List;)V
    .locals 7

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_2

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    add-int/lit8 v3, v1, 0x1

    .line 17
    .line 18
    if-ltz v1, :cond_1

    .line 19
    .line 20
    check-cast v2, Ljava/lang/Throwable;

    .line 21
    .line 22
    instance-of v4, v2, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$RequestException;

    .line 23
    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    instance-of v4, v4, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    .line 31
    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    new-instance v0, Landroidx/work/impl/WorkerWrapper$launch$1$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    check-cast v2, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$RequestException;

    .line 37
    .line 38
    const/4 v3, 0x4

    .line 39
    invoke-direct {v0, p0, v2, v3}, Landroidx/work/impl/WorkerWrapper$launch$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    new-instance v3, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 43
    .line 44
    const/4 v4, 0x3

    .line 45
    invoke-direct {v3, v0, v4}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 46
    .line 47
    .line 48
    sget-object v0, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 49
    .line 50
    invoke-virtual {v3, v0}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    new-instance v4, Landroidx/core/app/NotificationCompatBuilder;

    .line 59
    .line 60
    invoke-direct {v4, p0, v2, p1, v1}, Landroidx/core/app/NotificationCompatBuilder;-><init>(Lorg/schabi/newpipe/local/feed/FeedFragment;Lorg/schabi/newpipe/local/feed/service/FeedLoadService$RequestException;Ljava/util/List;I)V

    .line 61
    .line 62
    .line 63
    new-instance p1, Lorg/schabi/newpipe/local/feed/FeedFragment$listenerStreamItem$1;

    .line 64
    .line 65
    invoke-direct {p1, p0}, Lorg/schabi/newpipe/local/feed/FeedFragment$listenerStreamItem$1;-><init>(Lorg/schabi/newpipe/local/feed/FeedFragment;)V

    .line 66
    .line 67
    .line 68
    new-instance v1, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 69
    .line 70
    invoke-direct {v1, v4, p1}, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 71
    .line 72
    .line 73
    :try_start_0
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;

    .line 74
    .line 75
    invoke-direct {p1, v1, v3}, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;-><init>(Lio/reactivex/rxjava3/core/SingleObserver;Lio/reactivex/rxjava3/core/Scheduler;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    .line 81
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 82
    .line 83
    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    move-object p0, v0

    .line 89
    const-string/jumbo p1, "subscribeActual failed"

    .line 90
    .line 91
    .line 92
    invoke-static {p0, p1, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    throw p0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    move-object p0, v0

    .line 99
    throw p0

    .line 100
    :cond_0
    move v1, v3

    .line 101
    goto :goto_0

    .line 102
    :cond_1
    invoke-static {}, Lorg/jsoup/Jsoup;->throwIndexOverflow()V

    .line 103
    .line 104
    .line 105
    const/4 p0, 0x0

    .line 106
    throw p0

    .line 107
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_3

    .line 112
    .line 113
    sget-object v0, Lorg/schabi/newpipe/error/ErrorUtil;->Companion:Lorg/schabi/newpipe/error/ErrorUtil$Companion;

    .line 114
    .line 115
    new-instance v1, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 116
    .line 117
    sget-object v3, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_FEED:Lorg/schabi/newpipe/error/UserAction;

    .line 118
    .line 119
    const-string v4, ""

    .line 120
    .line 121
    const/4 v5, 0x0

    .line 122
    const/4 v6, 0x0

    .line 123
    move-object v2, p1

    .line 124
    invoke-direct/range {v1 .. v6}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/util/List;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    invoke-static {p0, v1}, Lorg/schabi/newpipe/error/ErrorUtil$Companion;->showSnackbar(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 131
    .line 132
    .line 133
    :cond_3
    return-void
.end method

.method public final handleResult(Lorg/schabi/newpipe/local/feed/FeedState;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    check-cast p1, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;

    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->showLoading()V

    .line 13
    .line 14
    .line 15
    iget v0, p1, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;->currentProgress:I

    .line 16
    .line 17
    iget v3, p1, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;->maxProgress:I

    .line 18
    .line 19
    const/4 v4, -0x1

    .line 20
    if-ne v0, v4, :cond_0

    .line 21
    .line 22
    if-ne v3, v4, :cond_0

    .line 23
    .line 24
    move v4, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v4, v2

    .line 27
    :goto_0
    iget-object v5, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 28
    .line 29
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget-object v5, v5, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->loadingProgressText:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 33
    .line 34
    if-nez v4, :cond_1

    .line 35
    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v6, "/"

    .line 45
    .line 46
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    iget p1, p1, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;->progressMessage:I

    .line 58
    .line 59
    if-lez p1, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const-string/jumbo p1, "\u221e/\u221e"

    .line 67
    .line 68
    .line 69
    :goto_1
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 78
    .line 79
    if-nez v4, :cond_4

    .line 80
    .line 81
    if-lez v3, :cond_3

    .line 82
    .line 83
    if-nez v0, :cond_3

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    move v1, v2

    .line 87
    :cond_4
    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 106
    .line 107
    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_8

    .line 111
    .line 112
    :cond_5
    instance-of v0, p1, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;

    .line 113
    .line 114
    if-eqz v0, :cond_13

    .line 115
    .line 116
    check-cast p1, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;

    .line 117
    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {v0}, Lokio/Options$Companion;->getItemViewMode(Landroid/content/Context;)Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    sget-object v3, Lorg/schabi/newpipe/local/feed/FeedFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    aget v0, v3, v0

    .line 133
    .line 134
    if-eq v0, v1, :cond_7

    .line 135
    .line 136
    const/4 v3, 0x2

    .line 137
    if-eq v0, v3, :cond_6

    .line 138
    .line 139
    sget-object v0, Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;->NORMAL:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_6
    sget-object v0, Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;->CARD:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_7
    sget-object v0, Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;->GRID:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

    .line 146
    .line 147
    :goto_3
    iget-object v3, p1, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->items:Ljava/util/ArrayList;

    .line 148
    .line 149
    iget-wide v4, p1, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->notLoadedCount:J

    .line 150
    .line 151
    iget-object v6, p1, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->oldestUpdate:Lj$/time/OffsetDateTime;

    .line 152
    .line 153
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v8

    .line 161
    if-eqz v8, :cond_8

    .line 162
    .line 163
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    check-cast v8, Lorg/schabi/newpipe/local/feed/item/StreamItem;

    .line 168
    .line 169
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    iput-object v0, v8, Lorg/schabi/newpipe/local/feed/item/StreamItem;->itemVersion:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_8
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->oldestSubscriptionUpdate:Lj$/time/OffsetDateTime;

    .line 176
    .line 177
    iget-object v7, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    .line 178
    .line 179
    const/4 v8, 0x0

    .line 180
    if-eqz v7, :cond_12

    .line 181
    .line 182
    iget-object v9, v7, Lcom/xwray/groupie/GroupAdapter;->groups:Ljava/util/ArrayList;

    .line 183
    .line 184
    new-instance v10, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda1;

    .line 185
    .line 186
    invoke-direct {v10, v0, p0}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda1;-><init>(Lj$/time/OffsetDateTime;Lorg/schabi/newpipe/local/feed/FeedFragment;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_9

    .line 194
    .line 195
    new-instance v0, Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 198
    .line 199
    .line 200
    new-instance v9, Lcom/xwray/groupie/DiffCallback;

    .line 201
    .line 202
    invoke-direct {v9, v0, v3}, Lcom/xwray/groupie/DiffCallback;-><init>(Ljava/util/ArrayList;Ljava/util/Collection;)V

    .line 203
    .line 204
    .line 205
    invoke-static {v9, v2}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v7, v3}, Lcom/xwray/groupie/GroupAdapter;->setNewGroups(Ljava/util/Collection;)V

    .line 210
    .line 211
    .line 212
    iget-object v7, v7, Lcom/xwray/groupie/GroupAdapter;->diffUtilCallbacks:Lokhttp3/ConnectionPool;

    .line 213
    .line 214
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v10}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda1;->onUpdateComplete()V

    .line 218
    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 224
    .line 225
    .line 226
    new-instance v9, Lcom/xwray/groupie/DiffCallback;

    .line 227
    .line 228
    invoke-direct {v9, v0, v3}, Lcom/xwray/groupie/DiffCallback;-><init>(Ljava/util/ArrayList;Ljava/util/Collection;)V

    .line 229
    .line 230
    .line 231
    iget-object v0, v7, Lcom/xwray/groupie/GroupAdapter;->asyncDiffUtil:Lcom/xwray/groupie/AsyncDiffUtil;

    .line 232
    .line 233
    iput-object v3, v0, Lcom/xwray/groupie/AsyncDiffUtil;->groups:Ljava/util/ArrayList;

    .line 234
    .line 235
    iget v7, v0, Lcom/xwray/groupie/AsyncDiffUtil;->maxScheduledGeneration:I

    .line 236
    .line 237
    add-int/2addr v7, v1

    .line 238
    iput v7, v0, Lcom/xwray/groupie/AsyncDiffUtil;->maxScheduledGeneration:I

    .line 239
    .line 240
    new-instance v11, Lcom/xwray/groupie/DiffTask;

    .line 241
    .line 242
    invoke-direct {v11, v0, v9, v7, v10}, Lcom/xwray/groupie/DiffTask;-><init>(Lcom/xwray/groupie/AsyncDiffUtil;Lcom/xwray/groupie/DiffCallback;ILorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda1;)V

    .line 243
    .line 244
    .line 245
    new-array v0, v2, [Ljava/lang/Void;

    .line 246
    .line 247
    invoke-virtual {v11, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 248
    .line 249
    .line 250
    :goto_5
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->listState:Landroid/os/Parcelable;

    .line 251
    .line 252
    if-eqz v0, :cond_b

    .line 253
    .line 254
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 260
    .line 261
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    if-eqz v0, :cond_a

    .line 266
    .line 267
    iget-object v7, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->listState:Landroid/os/Parcelable;

    .line 268
    .line 269
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 270
    .line 271
    .line 272
    :cond_a
    iput-object v8, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->listState:Landroid/os/Parcelable;

    .line 273
    .line 274
    :cond_b
    const-wide/16 v7, 0x0

    .line 275
    .line 276
    cmp-long v0, v4, v7

    .line 277
    .line 278
    if-lez v0, :cond_c

    .line 279
    .line 280
    move v0, v1

    .line 281
    goto :goto_6

    .line 282
    :cond_c
    move v0, v2

    .line 283
    :goto_6
    iget-object v7, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 284
    .line 285
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    .line 287
    .line 288
    iget-object v7, v7, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->refreshSubtitleText:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 289
    .line 290
    if-eqz v0, :cond_d

    .line 291
    .line 292
    move v8, v2

    .line 293
    goto :goto_7

    .line 294
    :cond_d
    const/16 v8, 0x8

    .line 295
    .line 296
    :goto_7
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 297
    .line 298
    .line 299
    if-eqz v0, :cond_e

    .line 300
    .line 301
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 302
    .line 303
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->refreshSubtitleText:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 307
    .line 308
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 309
    .line 310
    .line 311
    move-result-object v4

    .line 312
    new-array v1, v1, [Ljava/lang/Object;

    .line 313
    .line 314
    aput-object v4, v1, v2

    .line 315
    .line 316
    const v4, 0x7f1301dd

    .line 317
    .line 318
    .line 319
    invoke-virtual {p0, v4, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    .line 325
    .line 326
    :cond_e
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->oldestSubscriptionUpdate:Lj$/time/OffsetDateTime;

    .line 327
    .line 328
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    if-eqz v0, :cond_f

    .line 333
    .line 334
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->oldestSubscriptionUpdate:Lj$/time/OffsetDateTime;

    .line 335
    .line 336
    if-nez v0, :cond_10

    .line 337
    .line 338
    if-nez v6, :cond_10

    .line 339
    .line 340
    :cond_f
    iget-object p1, p1, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;->itemsErrors:Ljava/util/List;

    .line 341
    .line 342
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/feed/FeedFragment;->handleItemsErrors(Ljava/util/List;)V

    .line 343
    .line 344
    .line 345
    :cond_10
    iput-object v6, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->oldestSubscriptionUpdate:Lj$/time/OffsetDateTime;

    .line 346
    .line 347
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 348
    .line 349
    .line 350
    move-result p1

    .line 351
    if-eqz p1, :cond_11

    .line 352
    .line 353
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showEmptyState()V

    .line 354
    .line 355
    .line 356
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 357
    .line 358
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 359
    .line 360
    .line 361
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 362
    .line 363
    invoke-static {p1}, Lnet/newpipe/app/AppKt;->animateHideRecyclerViewAllowingScrolling(Landroid/view/View;)V

    .line 364
    .line 365
    .line 366
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 367
    .line 368
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 369
    .line 370
    .line 371
    iget-object v3, p1, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->refreshRootView:Landroid/widget/RelativeLayout;

    .line 372
    .line 373
    const/4 v10, 0x0

    .line 374
    const/16 v11, 0x1c

    .line 375
    .line 376
    const/4 v4, 0x1

    .line 377
    const-wide/16 v5, 0xc8

    .line 378
    .line 379
    const/4 v7, 0x0

    .line 380
    const-wide/16 v8, 0x0

    .line 381
    .line 382
    invoke-static/range {v3 .. v11}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 383
    .line 384
    .line 385
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 386
    .line 387
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 388
    .line 389
    .line 390
    iget-object v3, p1, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->loadingProgressText:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 391
    .line 392
    const/4 v4, 0x0

    .line 393
    const-wide/16 v5, 0x0

    .line 394
    .line 395
    invoke-static/range {v3 .. v11}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 396
    .line 397
    .line 398
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 399
    .line 400
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 401
    .line 402
    .line 403
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 404
    .line 405
    invoke-virtual {p1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 406
    .line 407
    .line 408
    goto :goto_8

    .line 409
    :cond_11
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->hideLoading()V

    .line 410
    .line 411
    .line 412
    goto :goto_8

    .line 413
    :cond_12
    const-string p0, "groupAdapter"

    .line 414
    .line 415
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    throw v8

    .line 419
    :cond_13
    instance-of v0, p1, Lorg/schabi/newpipe/local/feed/FeedState$ErrorState;

    .line 420
    .line 421
    if-eqz v0, :cond_15

    .line 422
    .line 423
    check-cast p1, Lorg/schabi/newpipe/local/feed/FeedState$ErrorState;

    .line 424
    .line 425
    iget-object v1, p1, Lorg/schabi/newpipe/local/feed/FeedState$ErrorState;->error:Ljava/lang/Throwable;

    .line 426
    .line 427
    if-nez v1, :cond_14

    .line 428
    .line 429
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->hideLoading()V

    .line 430
    .line 431
    .line 432
    :goto_8
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->updateRefreshViewState()V

    .line 433
    .line 434
    .line 435
    return-void

    .line 436
    :cond_14
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 437
    .line 438
    const/4 v4, 0x0

    .line 439
    const/16 v5, 0x18

    .line 440
    .line 441
    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_FEED:Lorg/schabi/newpipe/error/UserAction;

    .line 442
    .line 443
    const-string v3, "Loading feed"

    .line 444
    .line 445
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 449
    .line 450
    .line 451
    return-void

    .line 452
    :cond_15
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 453
    .line 454
    .line 455
    return-void
.end method

.method public final hideLoading()V
    .locals 10

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->hideLoading()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    const/4 v8, 0x0

    .line 12
    const/16 v9, 0x1c

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    const-wide/16 v3, 0x0

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    const-wide/16 v6, 0x0

    .line 19
    .line 20
    invoke-static/range {v1 .. v9}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->refreshRootView:Landroid/widget/RelativeLayout;

    .line 29
    .line 30
    const-wide/16 v3, 0xc8

    .line 31
    .line 32
    invoke-static/range {v1 .. v9}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->loadingProgressText:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    const-wide/16 v3, 0x0

    .line 44
    .line 45
    invoke-static/range {v1 .. v9}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 57
    .line 58
    .line 59
    iput-boolean v1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->isRefreshing:Z

    .line 60
    .line 61
    return-void
.end method

.method public final hideNewItemsLoaded(JZ)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->tryGetNewItemsLoadedButton()Landroid/widget/Button;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 8
    .line 9
    .line 10
    :cond_0
    if-eqz p3, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->tryGetNewItemsLoadedButton()Landroid/widget/Button;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    new-instance v8, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;

    .line 19
    .line 20
    const/4 p3, 0x0

    .line 21
    invoke-direct {v8, p0, p3}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;-><init>(Lorg/schabi/newpipe/local/feed/FeedFragment;I)V

    .line 22
    .line 23
    .line 24
    const/4 v9, 0x4

    .line 25
    const/4 v2, 0x0

    .line 26
    const-wide/16 v3, 0xc8

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    move-wide v6, p1

    .line 30
    invoke-static/range {v1 .. v9}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->tryGetNewItemsLoadedButton()Landroid/widget/Button;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    const/16 p1, 0x8

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void
.end method

.method public final initListeners()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->refreshRootView:Landroid/widget/RelativeLayout;

    .line 7
    .line 8
    new-instance v1, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda3;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/local/feed/FeedFragment;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 23
    .line 24
    new-instance v1, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    const/16 v2, 0xe

    .line 27
    .line 28
    invoke-direct {v1, p0, v2}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->newItemsLoadedButton:Landroid/widget/Button;

    .line 40
    .line 41
    new-instance v1, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda3;

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/local/feed/FeedFragment;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-wide/16 v0, -0x1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const-string v2, "ARG_GROUP_ID"

    .line 13
    .line 14
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    :cond_0
    iput-wide v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupId:J

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    const-string v0, "ARG_GROUP_NAME"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    :cond_1
    const-string p1, ""

    .line 35
    .line 36
    :cond_2
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupName:Ljava/lang/String;

    .line 37
    .line 38
    new-instance p1, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda6;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-direct {p1, p0, v0}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->onSettingsChangeListener:Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda6;

    .line 45
    .line 46
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 47
    .line 48
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->onSettingsChangeListener:Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda6;

    .line 53
    .line 54
    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lokio/Options$Companion;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Lokio/Options$Companion;->setDisplayShowTitleEnabled(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lokio/Options$Companion;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const v1, 0x7f1301f2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lokio/Options$Companion;->setTitle(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lokio/Options$Companion;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Lokio/Options$Companion;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    const p0, 0x7f0f0006

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p0, 0x7f0d005c

    .line 5
    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->onSettingsChangeListener:Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda6;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 12
    .line 13
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v2, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->onSettingsChangeListener:Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda6;

    .line 18
    .line 19
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->onSettingsChangeListener:Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda6;

    .line 23
    .line 24
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupName:Ljava/lang/String;

    .line 28
    .line 29
    const-string v2, ""

    .line 30
    .line 31
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lokio/Options$Companion;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Lokio/Options$Companion;->getSubtitle()Ljava/lang/CharSequence;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move-object v0, v1

    .line 53
    :goto_0
    iget-object v2, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupName:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    iget-object p0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 62
    .line 63
    if-eqz p0, :cond_2

    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lokio/Options$Companion;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    if-eqz p0, :cond_2

    .line 70
    .line 71
    invoke-virtual {p0, v1}, Lokio/Options$Companion;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    return-void
.end method

.method public final onDestroyOptionsMenu()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyOptionsMenu()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupName:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lokio/Options$Companion;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lokio/Options$Companion;->getSubtitle()Ljava/lang/CharSequence;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v0, v1

    .line 31
    :goto_0
    iget-object v2, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupName:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object p0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 40
    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lokio/Options$Companion;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    if-eqz p0, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0, v1}, Lokio/Options$Companion;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method public final onDestroyView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->tryGetNewItemsLoadedButton()Landroid/widget/Button;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 22
    .line 23
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onDestroyView()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const v1, 0x7f0a0243

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    const v3, 0x7f130397

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const v0, 0x7f1301e6

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    const v1, 0x7f1301e3

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const v1, 0x7f1301e4

    .line 45
    .line 46
    .line 47
    :goto_0
    new-instance v4, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-direct {v4, v6}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    const v6, 0x7f1301e5

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    .line 60
    .line 61
    .line 62
    new-instance v6, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda2;

    .line 63
    .line 64
    invoke-direct {v6, p1, p0, v0}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda2;-><init>(Landroid/content/SharedPreferences;Lorg/schabi/newpipe/local/feed/FeedFragment;Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v1, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    iget-object p1, v4, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 79
    .line 80
    iput-object p0, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 81
    .line 82
    iput-object v5, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 83
    .line 84
    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog$Builder;->show()V

    .line 85
    .line 86
    .line 87
    return v2

    .line 88
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    const v0, 0x7f0a0244

    .line 93
    .line 94
    .line 95
    if-ne p1, v0, :cond_5

    .line 96
    .line 97
    const p1, 0x7f1301db

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const v0, 0x7f1301d8

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const v1, 0x7f1301da

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->viewModel:Lorg/schabi/newpipe/local/feed/FeedViewModel;

    .line 123
    .line 124
    const-string/jumbo v1, "viewModel"

    .line 125
    .line 126
    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    sget-object v6, Lorg/schabi/newpipe/local/feed/FeedViewModel;->Companion:Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;

    .line 130
    .line 131
    iget-object v0, v0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->application:Lorg/schabi/newpipe/App;

    .line 132
    .line 133
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    const v7, 0x7f1301dc

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-interface {v6, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    iget-object v6, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->viewModel:Lorg/schabi/newpipe/local/feed/FeedViewModel;

    .line 152
    .line 153
    if-eqz v6, :cond_3

    .line 154
    .line 155
    iget-object v6, v6, Lorg/schabi/newpipe/local/feed/FeedViewModel;->application:Lorg/schabi/newpipe/App;

    .line 156
    .line 157
    invoke-static {v6}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    const v8, 0x7f1301d9

    .line 162
    .line 163
    .line 164
    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    invoke-interface {v7, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    iget-object v7, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->viewModel:Lorg/schabi/newpipe/local/feed/FeedViewModel;

    .line 173
    .line 174
    if-eqz v7, :cond_2

    .line 175
    .line 176
    iget-object v1, v7, Lorg/schabi/newpipe/local/feed/FeedViewModel;->application:Lorg/schabi/newpipe/App;

    .line 177
    .line 178
    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    const v8, 0x7f1301d6

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-interface {v7, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    const/4 v7, 0x3

    .line 194
    new-array v7, v7, [Z

    .line 195
    .line 196
    aput-boolean v0, v7, v4

    .line 197
    .line 198
    aput-boolean v6, v7, v2

    .line 199
    .line 200
    const/4 v0, 0x2

    .line 201
    aput-boolean v1, v7, v0

    .line 202
    .line 203
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 204
    .line 205
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 210
    .line 211
    .line 212
    const v1, 0x7f1301cd

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    .line 216
    .line 217
    .line 218
    check-cast p1, [Ljava/lang/CharSequence;

    .line 219
    .line 220
    new-instance v1, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda8;

    .line 221
    .line 222
    invoke-direct {v1, v7}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda8;-><init>([Z)V

    .line 223
    .line 224
    .line 225
    iget-object v6, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 226
    .line 227
    iput-object p1, v6, Landroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 228
    .line 229
    iput-object v1, v6, Landroidx/appcompat/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 230
    .line 231
    iput-object v7, v6, Landroidx/appcompat/app/AlertController$AlertParams;->mCheckedItems:[Z

    .line 232
    .line 233
    iput-boolean v2, v6, Landroidx/appcompat/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 234
    .line 235
    new-instance p1, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;

    .line 236
    .line 237
    invoke-direct {p1, p0, v7, v4}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    const p1, 0x7f130076

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0, p1, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()V

    .line 252
    .line 253
    .line 254
    return v4

    .line 255
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    throw v5

    .line 259
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    throw v5

    .line 263
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    throw v5

    .line 267
    :cond_5
    return v4
.end method

.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->listState:Landroid/os/Parcelable;

    .line 24
    .line 25
    return-void
.end method

.method public final onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->updateRefreshViewState()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_5

    .line 11
    .line 12
    iget-object v2, v0, Lcom/xwray/groupie/GroupAdapter;->groups:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-static {v2}, Landroidx/sqlite/SQLite;->getItemCount(Ljava/util/Collection;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x1

    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-virtual {v0, v4, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-boolean v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->updateListViewModeOnResume:Z

    .line 28
    .line 29
    if-eqz v0, :cond_4

    .line 30
    .line 31
    iput-boolean v4, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->updateListViewModeOnResume:Z

    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->setupListViewMode()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->viewModel:Lorg/schabi/newpipe/local/feed/FeedViewModel;

    .line 37
    .line 38
    const-string/jumbo v2, "viewModel"

    .line 39
    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    iget-object v0, v0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->stateLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 44
    .line 45
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    .line 46
    .line 47
    sget-object v3, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    .line 48
    .line 49
    if-eq v0, v3, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move-object v0, v1

    .line 53
    :goto_0
    if-eqz v0, :cond_4

    .line 54
    .line 55
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->viewModel:Lorg/schabi/newpipe/local/feed/FeedViewModel;

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    iget-object v0, v0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->stateLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 60
    .line 61
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    .line 62
    .line 63
    if-eq v0, v3, :cond_1

    .line 64
    .line 65
    move-object v1, v0

    .line 66
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    check-cast v1, Lorg/schabi/newpipe/local/feed/FeedState;

    .line 70
    .line 71
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/local/feed/FeedFragment;->handleResult(Lorg/schabi/newpipe/local/feed/FeedState;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v1

    .line 79
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v1

    .line 83
    :cond_4
    return-void

    .line 84
    :cond_5
    const-string p0, "groupAdapter"

    .line 85
    .line 86
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v1
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a0144

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-static {v1}, Lorg/schabi/newpipe/databinding/ListEmptyViewBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ListEmptyViewBinding;

    .line 14
    .line 15
    .line 16
    const v0, 0x7f0a015b

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-static {v1}, Lorg/schabi/newpipe/databinding/ErrorPanelBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ErrorPanelBinding;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a0206

    .line 29
    .line 30
    .line 31
    invoke-static {v0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    move-object v4, v1

    .line 36
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    const v0, 0x7f0a0218

    .line 41
    .line 42
    .line 43
    invoke-static {v0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    move-object v5, v1

    .line 48
    check-cast v5, Landroid/widget/ProgressBar;

    .line 49
    .line 50
    if-eqz v5, :cond_2

    .line 51
    .line 52
    const v0, 0x7f0a0219

    .line 53
    .line 54
    .line 55
    invoke-static {v0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    move-object v6, v1

    .line 60
    check-cast v6, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 61
    .line 62
    if-eqz v6, :cond_2

    .line 63
    .line 64
    const v0, 0x7f0a028b

    .line 65
    .line 66
    .line 67
    invoke-static {v0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    move-object v7, v1

    .line 72
    check-cast v7, Landroid/widget/Button;

    .line 73
    .line 74
    if-eqz v7, :cond_2

    .line 75
    .line 76
    const v0, 0x7f0a032b

    .line 77
    .line 78
    .line 79
    invoke-static {v0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Landroid/widget/ImageView;

    .line 84
    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    const v0, 0x7f0a032c

    .line 88
    .line 89
    .line 90
    invoke-static {v0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Landroid/widget/LinearLayout;

    .line 95
    .line 96
    if-eqz v1, :cond_2

    .line 97
    .line 98
    const v0, 0x7f0a032d

    .line 99
    .line 100
    .line 101
    invoke-static {v0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    move-object v8, v1

    .line 106
    check-cast v8, Landroid/widget/RelativeLayout;

    .line 107
    .line 108
    if-eqz v8, :cond_2

    .line 109
    .line 110
    const v0, 0x7f0a032e

    .line 111
    .line 112
    .line 113
    invoke-static {v0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    move-object v9, v1

    .line 118
    check-cast v9, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 119
    .line 120
    if-eqz v9, :cond_2

    .line 121
    .line 122
    const v0, 0x7f0a032f

    .line 123
    .line 124
    .line 125
    invoke-static {v0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    move-object v10, v1

    .line 130
    check-cast v10, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 131
    .line 132
    if-eqz v10, :cond_2

    .line 133
    .line 134
    const v0, 0x7f0a03bb

    .line 135
    .line 136
    .line 137
    invoke-static {v0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    move-object v11, v1

    .line 142
    check-cast v11, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 143
    .line 144
    if-eqz v11, :cond_2

    .line 145
    .line 146
    new-instance v2, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 147
    .line 148
    move-object v3, p1

    .line 149
    check-cast v3, Landroid/widget/RelativeLayout;

    .line 150
    .line 151
    invoke-direct/range {v2 .. v11}, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;-><init>(Landroid/widget/RelativeLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ProgressBar;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/Button;Landroid/widget/RelativeLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    .line 152
    .line 153
    .line 154
    iput-object v2, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 155
    .line 156
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 157
    .line 158
    .line 159
    sget-object p1, Lorg/schabi/newpipe/local/feed/FeedViewModel;->Companion:Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;

    .line 160
    .line 161
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    iget-wide v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupId:J

    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    new-instance p1, Landroidx/work/Data$Builder;

    .line 174
    .line 175
    const/4 v2, 0x2

    .line 176
    invoke-direct {p1, v2}, Landroidx/work/Data$Builder;-><init>(I)V

    .line 177
    .line 178
    .line 179
    new-instance v3, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda6;

    .line 180
    .line 181
    invoke-direct {v3, v2, v0, v1, p2}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda6;-><init>(IJLjava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    const-class p2, Lorg/schabi/newpipe/local/feed/FeedViewModel;

    .line 185
    .line 186
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {p1, v0, v3}, Landroidx/work/Data$Builder;->addInitializer(Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function1;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1}, Landroidx/work/Data$Builder;->build()Landroidx/lifecycle/viewmodel/InitializerViewModelFactory;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelCreationExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    new-instance v2, Lokhttp3/Dispatcher;

    .line 212
    .line 213
    invoke-direct {v2, v0, p1, v1}, Lokhttp3/Dispatcher;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)V

    .line 214
    .line 215
    .line 216
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-virtual {p1}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    if-eqz p2, :cond_1

    .line 225
    .line 226
    const-string v0, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 227
    .line 228
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    invoke-virtual {v2, p2, p1}, Lokhttp3/Dispatcher;->getViewModel$lifecycle_viewmodel(Ljava/lang/String;Lkotlin/jvm/internal/ClassReference;)Landroidx/lifecycle/ViewModel;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    check-cast p1, Lorg/schabi/newpipe/local/feed/FeedViewModel;

    .line 237
    .line 238
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->viewModel:Lorg/schabi/newpipe/local/feed/FeedViewModel;

    .line 239
    .line 240
    iget-object p1, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel;->stateLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 241
    .line 242
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    new-instance v0, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;

    .line 247
    .line 248
    const/16 v1, 0xd

    .line 249
    .line 250
    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 251
    .line 252
    .line 253
    new-instance v1, Lorg/schabi/newpipe/local/feed/FeedFragment$sam$androidx_lifecycle_Observer$0;

    .line 254
    .line 255
    const/4 v2, 0x0

    .line 256
    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/local/feed/FeedFragment$sam$androidx_lifecycle_Observer$0;-><init>(Ljava/lang/Object;I)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 260
    .line 261
    .line 262
    new-instance p1, Lcom/xwray/groupie/GroupieAdapter;

    .line 263
    .line 264
    invoke-direct {p1}, Lcom/xwray/groupie/GroupAdapter;-><init>()V

    .line 265
    .line 266
    .line 267
    iget-object p2, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->listenerStreamItem:Lorg/schabi/newpipe/local/feed/FeedFragment$listenerStreamItem$1;

    .line 268
    .line 269
    iput-object p2, p1, Lcom/xwray/groupie/GroupAdapter;->onItemClickListener:Lcom/xwray/groupie/OnItemClickListener;

    .line 270
    .line 271
    iput-object p2, p1, Lcom/xwray/groupie/GroupAdapter;->onItemLongClickListener:Lcom/xwray/groupie/OnItemLongClickListener;

    .line 272
    .line 273
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    .line 274
    .line 275
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 276
    .line 277
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 281
    .line 282
    new-instance p2, Landroidx/recyclerview/widget/FastScroller$2;

    .line 283
    .line 284
    const/4 v0, 0x1

    .line 285
    invoke-direct {p2, p0, v0}, Landroidx/recyclerview/widget/FastScroller$2;-><init>(Ljava/lang/Object;I)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 289
    .line 290
    .line 291
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 292
    .line 293
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 297
    .line 298
    iget-object p2, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    .line 299
    .line 300
    if-eqz p2, :cond_0

    .line 301
    .line 302
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->setupListViewMode()V

    .line 306
    .line 307
    .line 308
    return-void

    .line 309
    :cond_0
    const-string p0, "groupAdapter"

    .line 310
    .line 311
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    const/4 p0, 0x0

    .line 315
    throw p0

    .line 316
    :cond_1
    const-string p0, "Local and anonymous classes can not be ViewModels"

    .line 317
    .line 318
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    return-void

    .line 322
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 323
    .line 324
    .line 325
    move-result-object p0

    .line 326
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p0

    .line 330
    const-string p1, "Missing required view with ID: "

    .line 331
    .line 332
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    return-void
.end method

.method public final reloadContent()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    invoke-virtual {p0, v1, v2, v0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->hideNewItemsLoaded(JZ)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Landroid/content/Intent;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-class v3, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;

    .line 20
    .line 21
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    .line 23
    .line 24
    const-string v2, "FeedLoadService.EXTRA_GROUP_ID"

    .line 25
    .line 26
    iget-wide v3, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupId:J

    .line 27
    .line 28
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 32
    .line 33
    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->listState:Landroid/os/Parcelable;

    .line 36
    .line 37
    return-void
.end method

.method public final setupListViewMode()V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "groupAdapter"

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-static {v3}, Lokio/Options$Companion;->getItemViewMode(Landroid/content/Context;)Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    sget-object v4, Lorg/schabi/newpipe/info_list/ItemViewMode;->GRID:Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    if-ne v3, v4, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const v6, 0x7f070394

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    const v7, 0x7f07039f

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    mul-int/lit8 v4, v4, 0x2

    .line 44
    .line 45
    add-int/2addr v4, v6

    .line 46
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 55
    .line 56
    div-int/2addr v3, v4

    .line 57
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    :cond_0
    iput v5, v0, Lcom/xwray/groupie/GroupAdapter;->spanCount:I

    .line 62
    .line 63
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    .line 70
    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 71
    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    iget-object v5, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    .line 77
    .line 78
    if-eqz v5, :cond_2

    .line 79
    .line 80
    iget v5, v5, Lcom/xwray/groupie/GroupAdapter;->spanCount:I

    .line 81
    .line 82
    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 83
    .line 84
    .line 85
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->groupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    .line 86
    .line 87
    if-eqz p0, :cond_1

    .line 88
    .line 89
    iget-object p0, p0, Lcom/xwray/groupie/GroupAdapter;->spanSizeLookup:Lcom/xwray/groupie/GroupAdapter$2;

    .line 90
    .line 91
    iput-object p0, v3, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/core/app/NotificationCompat$Style;

    .line 92
    .line 93
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw v1

    .line 101
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v1

    .line 105
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v1
.end method

.method public final showLoading()V
    .locals 10

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showLoading()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    invoke-static {v0}, Lnet/newpipe/app/AppKt;->animateHideRecyclerViewAllowingScrolling(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->refreshRootView:Landroid/widget/RelativeLayout;

    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    const/16 v9, 0x1c

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const-wide/16 v3, 0x0

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    const-wide/16 v6, 0x0

    .line 29
    .line 30
    invoke-static/range {v1 .. v9}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->loadingProgressText:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    const-wide/16 v3, 0xc8

    .line 42
    .line 43
    invoke-static/range {v1 .. v9}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 55
    .line 56
    .line 57
    iput-boolean v1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->isRefreshing:Z

    .line 58
    .line 59
    return-void
.end method

.method public final tryGetNewItemsLoadedButton()Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->newItemsLoadedButton:Landroid/widget/Button;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public final updateRefreshViewState()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->_feedBinding:Lorg/schabi/newpipe/databinding/FragmentFeedBinding;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentFeedBinding;->refreshText:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->oldestSubscriptionUpdate:Lj$/time/OffsetDateTime;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    sget-object v2, Lorg/schabi/newpipe/util/Localization;->prettyTime:Lorg/ocpsoft/prettytime/PrettyTime;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Lj$/time/OffsetDateTime;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    :cond_0
    const-string/jumbo v1, "\u2014"

    .line 21
    .line 22
    .line 23
    :cond_1
    const/4 v2, 0x1

    .line 24
    new-array v2, v2, [Ljava/lang/Object;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    aput-object v1, v2, v3

    .line 28
    .line 29
    const v1, 0x7f1301d4

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
