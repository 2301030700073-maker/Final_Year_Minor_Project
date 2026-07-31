.class public Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;
.super Lorg/schabi/newpipe/local/BaseLocalListFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/local/BaseLocalListFragment<",
        "Ljava/util/List<",
        "Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;",
        ">;",
        "Ljava/lang/Void;",
        ">;",
        "Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public databaseSubscription:Lorg/reactivestreams/Subscription;

.field public final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field public headerBinding:Lokhttp3/Dispatcher;

.field itemsListState:Landroid/os/Parcelable;

.field public playlistControlBinding:Lokhttp3/Dispatcher;

.field public recordManager:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

.field public sortMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;-><init>()V

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
    iput-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->sortMode:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final getListHeaderSupplier()Ljava/util/function/Supplier;
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    const v2, 0x7f0d0102

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v1, 0x7f0a0308

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-static {v2}, Lokhttp3/Dispatcher;->bind(Landroid/view/View;)Lokhttp3/Dispatcher;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    const v1, 0x7f0a0380

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    move-object v6, v2

    .line 38
    check-cast v6, Landroid/widget/RelativeLayout;

    .line 39
    .line 40
    if-eqz v6, :cond_0

    .line 41
    .line 42
    const v1, 0x7f0a0381

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    move-object v7, v2

    .line 50
    check-cast v7, Landroid/widget/ImageView;

    .line 51
    .line 52
    if-eqz v7, :cond_0

    .line 53
    .line 54
    const v1, 0x7f0a0382

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    move-object v8, v2

    .line 62
    check-cast v8, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 63
    .line 64
    if-eqz v8, :cond_0

    .line 65
    .line 66
    new-instance v3, Lokhttp3/Dispatcher;

    .line 67
    .line 68
    move-object v4, v0

    .line 69
    check-cast v4, Landroid/widget/LinearLayout;

    .line 70
    .line 71
    invoke-direct/range {v3 .. v8}, Lokhttp3/Dispatcher;-><init>(Landroid/widget/LinearLayout;Lokhttp3/Dispatcher;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Lorg/schabi/newpipe/views/NewPipeTextView;)V

    .line 72
    .line 73
    .line 74
    iput-object v3, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->headerBinding:Lokhttp3/Dispatcher;

    .line 75
    .line 76
    iput-object v5, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->playlistControlBinding:Lokhttp3/Dispatcher;

    .line 77
    .line 78
    new-instance p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda38;

    .line 79
    .line 80
    const/4 v0, 0x5

    .line 81
    invoke-direct {p0, v3, v0}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda38;-><init>(Ljava/lang/Object;I)V

    .line 82
    .line 83
    .line 84
    return-object p0

    .line 85
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    const-string v0, "Missing required view with ID: "

    .line 94
    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const/4 p0, 0x0

    .line 103
    return-object p0
.end method

.method public final getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;
    .locals 4

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    new-instance p0, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;

    .line 7
    .line 8
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 9
    .line 10
    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;-><init>(ILjava/util/List;)V

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lorg/schabi/newpipe/database/LocalItem;

    .line 40
    .line 41
    instance-of v3, v2, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    check-cast v2, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    .line 46
    .line 47
    invoke-virtual {v2}, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->toStreamInfoItem()Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance p0, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;

    .line 56
    .line 57
    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;-><init>(ILjava/util/List;)V

    .line 58
    .line 59
    .line 60
    return-object p0
.end method

.method public final handleResult(Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->hideLoading()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->playlistControlBinding:Lokhttp3/Dispatcher;

    .line 10
    .line 11
    iget-object v0, v0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Landroid/widget/LinearLayout;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 20
    .line 21
    invoke-virtual {v0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->clearStreamItemList()V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->showEmptyState()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 35
    .line 36
    iget v1, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->sortMode:I

    .line 37
    .line 38
    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const/4 v2, 0x0

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    const/4 v3, 0x1

    .line 46
    if-eq v1, v3, :cond_2

    .line 47
    .line 48
    move-object p1, v2

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    new-instance v1, Lus/shandian/giga/service/DownloadManager$$ExternalSyntheticLambda0;

    .line 51
    .line 52
    const/4 v3, 0x2

    .line 53
    invoke-direct {v1, v3}, Lus/shandian/giga/service/DownloadManager$$ExternalSyntheticLambda0;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Lj$/util/Comparator$-CC;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 62
    .line 63
    const/4 v3, 0x3

    .line 64
    invoke-direct {v1, v3}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    :goto_0
    invoke-static {v1}, Lj$/util/Comparator$-EL;->reversed(Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 76
    .line 77
    .line 78
    :goto_1
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->addItems(Ljava/util/List;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->itemsListState:Landroid/os/Parcelable;

    .line 82
    .line 83
    if-eqz p1, :cond_4

    .line 84
    .line 85
    iget-object p1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 86
    .line 87
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-eqz p1, :cond_4

    .line 92
    .line 93
    iget-object p1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 94
    .line 95
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->itemsListState:Landroid/os/Parcelable;

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 102
    .line 103
    .line 104
    iput-object v2, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->itemsListState:Landroid/os/Parcelable;

    .line 105
    .line 106
    :cond_4
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 107
    .line 108
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->playlistControlBinding:Lokhttp3/Dispatcher;

    .line 109
    .line 110
    invoke-static {p1, v0, p0}, Lnet/newpipe/app/AppKt;->initPlaylistControlClickListener(Landroidx/appcompat/app/AppCompatActivity;Lokhttp3/Dispatcher;Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->headerBinding:Lokhttp3/Dispatcher;

    .line 114
    .line 115
    iget-object p1, p1, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 118
    .line 119
    new-instance v0, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda4;

    .line 120
    .line 121
    const/4 v1, 0x6

    .line 122
    invoke-direct {v0, p0, v1}, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->hideLoading()V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public final initListeners()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 2
    .line 3
    new-instance v1, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$1;-><init>(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, v0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItemBuilder:Lorg/jsoup/parser/TokenData;

    .line 9
    .line 10
    iput-object v1, p0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method

.method public final initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->initViews(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lorg/schabi/newpipe/BaseFragment;->useAsFrontPage:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const p1, 0x7f1304fb

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p1, v0}, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->recordManager:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 14
    .line 15
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 2
    .line 3
    .line 4
    const p0, 0x7f0f0008

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    const p0, 0x7f0d0061

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
    invoke-super {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->recordManager:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->itemsListState:Landroid/os/Parcelable;

    .line 8
    .line 9
    return-void
.end method

.method public final onDestroyView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItemBuilder:Lorg/jsoup/parser/TokenData;

    .line 10
    .line 11
    iput-object v1, v0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 12
    .line 13
    :cond_0
    iput-object v1, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->headerBinding:Lokhttp3/Dispatcher;

    .line 14
    .line 15
    iput-object v1, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->playlistControlBinding:Lokhttp3/Dispatcher;

    .line 16
    .line 17
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->databaseSubscription:Lorg/reactivestreams/Subscription;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 22
    .line 23
    .line 24
    :cond_1
    iput-object v1, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->databaseSubscription:Lorg/reactivestreams/Subscription;

    .line 25
    .line 26
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0a0041

    .line 6
    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->recordManager:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 15
    .line 16
    iget-object p0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 17
    .line 18
    invoke-static {p1, v0, p0}, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->openDeleteWatchHistoryDialog(Landroid/content/Context;Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;Lio/reactivex/rxjava3/disposables/CompositeDisposable;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->itemsListState:Landroid/os/Parcelable;

    .line 18
    .line 19
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const v1, 0x7f1304f8

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final resetFragment()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->resetFragment()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->databaseSubscription:Lorg/reactivestreams/Subscription;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-interface {p0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final startLoading(Z)V
    .locals 4

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-super {p0, p1}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->startLoading(Z)V

    .line 3
    .line 4
    .line 5
    iget-object p1, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->recordManager:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 6
    .line 7
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistDescription:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;

    .line 10
    .line 11
    iget-object v0, p1, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 12
    .line 13
    const-string/jumbo v1, "stream_history"

    .line 14
    .line 15
    .line 16
    const-string/jumbo v2, "stream_state"

    .line 17
    .line 18
    .line 19
    const-string/jumbo v3, "streams"

    .line 20
    .line 21
    .line 22
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v2, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-direct {v2, p1, v3}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;I)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v3, v1, v2}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    sget-object v0, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSubscribeOn;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-instance v0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$1;

    .line 51
    .line 52
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$1;-><init>(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
