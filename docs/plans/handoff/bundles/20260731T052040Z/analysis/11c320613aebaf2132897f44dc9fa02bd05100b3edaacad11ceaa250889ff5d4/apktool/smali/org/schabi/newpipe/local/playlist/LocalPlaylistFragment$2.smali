.class public final Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$2;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/reactivestreams/Subscriber;
.implements Lorg/schabi/newpipe/util/OnClickGesture;


# instance fields
.field public final synthetic this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$2;->this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public drag(Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/schabi/newpipe/database/LocalItem;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$2;->this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public held(Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p1, Lorg/schabi/newpipe/database/LocalItem;

    .line 2
    .line 3
    instance-of v0, p1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$2;->this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 8
    .line 9
    check-cast p1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->toStreamInfoItem()Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-direct {v2, v3, v1, p0, v0}, Lorg/schabi/newpipe/streams/WebMReader$Segment;-><init>(Landroidx/fragment/app/FragmentActivity;Landroid/content/Context;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    .line 26
    .line 27
    .line 28
    sget-object v3, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->SET_AS_PLAYLIST_THUMBNAIL:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 29
    .line 30
    sget-object v4, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->DELETE:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 31
    .line 32
    const/4 v5, 0x2

    .line 33
    new-array v5, v5, [Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    aput-object v3, v5, v6

    .line 37
    .line 38
    const/4 v7, 0x1

    .line 39
    aput-object v4, v5, v7

    .line 40
    .line 41
    invoke-static {v5}, Lj$/util/stream/Stream$-CC;->of([Ljava/lang/Object;)Lj$/util/stream/Stream;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    new-instance v8, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;

    .line 46
    .line 47
    const/16 v9, 0x9

    .line 48
    .line 49
    invoke-direct {v8, v2, v9}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v5, v8}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 53
    .line 54
    .line 55
    sget-object v5, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->START_HERE_ON_BACKGROUND:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 56
    .line 57
    new-instance v8, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda16;

    .line 58
    .line 59
    invoke-direct {v8, p0, v1, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda16;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Landroid/content/Context;Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v5, v8}, Lorg/schabi/newpipe/streams/WebMReader$Segment;->setAction(Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    .line 63
    .line 64
    .line 65
    new-instance v1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda24;

    .line 66
    .line 67
    invoke-direct {v1, p0, p1, v7}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda24;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v3, v1}, Lorg/schabi/newpipe/streams/WebMReader$Segment;->setAction(Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    .line 71
    .line 72
    .line 73
    new-instance v1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda24;

    .line 74
    .line 75
    invoke-direct {v1, p0, p1, v6}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda24;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v4, v1}, Lorg/schabi/newpipe/streams/WebMReader$Segment;->setAction(Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/WebMReader$Segment;->create()Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->show()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :catch_0
    move-exception p0

    .line 90
    invoke-static {p0, v0}, Lorg/schabi/newpipe/streams/WebMReader$Segment;->reportErrorDuringInitialization(Ljava/lang/IllegalArgumentException;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    .line 91
    .line 92
    .line 93
    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 0

    .line 1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 2
    .line 3
    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_BOOKMARK:Lorg/schabi/newpipe/error/UserAction;

    .line 4
    .line 5
    const-string v2, "Loading local playlist"

    .line 6
    .line 7
    invoke-direct {v0, p1, v1, v2}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$2;->this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$2;->this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 4
    .line 5
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->debounceSaver:Lokhttp3/internal/connection/RealConnectionPool;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/io/Serializable;

    .line 10
    .line 11
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_4

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->hideLoading()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->clearStreamItemList()V

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->showEmptyState()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->addItems(Ljava/util/List;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->itemsListState:Landroid/os/Parcelable;

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    iget-object p1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->itemsListState:Landroid/os/Parcelable;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->itemsListState:Landroid/os/Parcelable;

    .line 62
    .line 63
    :cond_3
    iget-object p1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 64
    .line 65
    iget-object p1, p1, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->setStreamCountAndOverallDuration(Ljava/util/ArrayList;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 71
    .line 72
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistControlBinding:Lokhttp3/Dispatcher;

    .line 73
    .line 74
    invoke-static {p1, v0, p0}, Lnet/newpipe/app/AppKt;->initPlaylistControlClickListener(Landroidx/appcompat/app/AppCompatActivity;Lokhttp3/Dispatcher;Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->hideLoading()V

    .line 78
    .line 79
    .line 80
    :goto_0
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->isLoadingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    .line 82
    const/4 v0, 0x1

    .line 83
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 84
    .line 85
    .line 86
    :cond_4
    iget-object p0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->databaseSubscription:Lorg/reactivestreams/Subscription;

    .line 87
    .line 88
    if-eqz p0, :cond_5

    .line 89
    .line 90
    const-wide/16 v0, 0x1

    .line 91
    .line 92
    invoke-interface {p0, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 93
    .line 94
    .line 95
    :cond_5
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$2;->this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->showLoading()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->isLoadingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->databaseSubscription:Lorg/reactivestreams/Subscription;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->databaseSubscription:Lorg/reactivestreams/Subscription;

    .line 20
    .line 21
    const-wide/16 v0, 0x1

    .line 22
    .line 23
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public selected(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Lorg/schabi/newpipe/database/LocalItem;

    .line 2
    .line 3
    instance-of v0, p1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 8
    .line 9
    iget-object p1, p1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 10
    .line 11
    iget-object p0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$2;->this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getServiceId()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUrl()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getTitle()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    invoke-static/range {v0 .. v6}, Landroidx/sqlite/SQLite;->openVideoDetailFragment(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method
